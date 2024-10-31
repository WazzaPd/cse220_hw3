#include "qtree.h"

QTNode* initializeNode(unsigned short startRow, unsigned short startCol, unsigned short width, unsigned short height){
    QTNode* node = malloc(sizeof(QTNode));
    node->width = width;
    node->height = height;
    node->startRow = startRow;
    node->startCol = startCol;
    node->avgIntensity = 'n';
    node->child1 = NULL;
    node->child2 = NULL;
    node->child3 = NULL;
    node->child4 = NULL;

    return node;
}

double calcRMSE(QTNode * node, Image * image, unsigned short startRow, unsigned short startCol, unsigned short width, unsigned short height){
    
    double  average1 = 0;
    long total1 = 0;

    for (int row = startRow; row< height+startRow; row++){
        for(int col = startCol; col < width+startCol; col++){
            total1 += (long)(get_image_intensity(image, row, col));
        }
    }
    average1 = (double) total1 / (height * width);

    node->avgIntensity = (unsigned char)(average1);

    double total2 = 0;
    double average2 = 0;

    for (int row = startRow; row< height+startRow; row++){
        for(int col = startCol; col < width+startCol; col++){
            double difference =  average1 - (get_image_intensity(image, row, col));
            double squaredDifference = difference * difference;
            total2 += squaredDifference;
        }
    }
    average2 = total2 / (height*width);
    
    return sqrt(average2);
}

QTNode *create_quadtree_helper(Image *image, double max_rmse, unsigned short startRow, unsigned short startCol, unsigned short width, unsigned short height){
    QTNode * node = initializeNode(startRow, startCol, width, height);

    if(height == 1 && width == 1){
        return node;
    }

    double RMSE = calcRMSE(node, image, startRow, startCol, width, height);
    unsigned short two_four_width = 0;
    unsigned short three_four_height = 0;

    if (width % 2 == 1){
        two_four_width = (width/2) + 1;
    } else {
        two_four_width = width/2;
    }
    if (height % 2 == 1){
        three_four_height = (height/2) + 1;
    } else {
        three_four_height = height/2;
    }

    if(RMSE > max_rmse){
        if(width > 1 && height > 1){
            node->child1 = create_quadtree_helper(image, max_rmse, startRow, startCol, width/2, height/2);
            node->child2 = create_quadtree_helper(image, max_rmse, startRow, startCol + (width/2), two_four_width, height/2);
            node->child3 = create_quadtree_helper(image, max_rmse, startRow + (height/2), startCol, width/2, three_four_height);
            node->child4 = create_quadtree_helper(image, max_rmse, startRow + (height/2), startCol + (width/2), two_four_width, three_four_height);
        } else if(width > 1 && height == 1){
            node->child1 = create_quadtree_helper(image, max_rmse, startRow, startCol, width/2, height);
            node->child2 = create_quadtree_helper(image, max_rmse, startRow, startCol + (width/2), two_four_width, height);
        } else if(width == 1 && height > 1){
            node->child1 = create_quadtree_helper(image, max_rmse, startRow, startCol, width, height/2);
            node->child3 = create_quadtree_helper(image, max_rmse, startRow + (height/2), startCol, width, three_four_height);
        }
    }
    return node;
}

QTNode *create_quadtree(Image *image, double max_rmse) {
    unsigned short width = get_image_width(image);
    unsigned short height = get_image_height(image);
    return create_quadtree_helper(image, max_rmse, 0, 0, width, height);
}

QTNode *get_child1(QTNode *node) {
    if(node == NULL) return NULL;
    
    return node->child1;
}

QTNode *get_child2(QTNode *node) {
    if(node == NULL) return NULL;
    
    return node->child1;
}

QTNode *get_child3(QTNode *node) {
    if(node == NULL) return NULL;
    
    return node->child1;
}

QTNode *get_child4(QTNode *node) {
    if(node == NULL) return NULL;
    
    return node->child1;
}

unsigned char get_node_intensity(QTNode *node) {

    return node->avgIntensity;
}

void delete_quadtree(QTNode *root) {
    if(root == NULL) return;

    if(root->child1 != NULL){
        delete_quadtree(root->child1);
    }
    if(root->child2!= NULL){
        delete_quadtree(root->child2);
    }
    if(root->child3 != NULL){
        delete_quadtree(root->child3);
    }
    if(root->child4 != NULL){
        delete_quadtree(root->child4);
    }
    free(root);
}

void getIntensities(QTNode *node, unsigned char* buffer, unsigned short imageWidth){
    if(node == NULL) return;

    unsigned short width = node->width;
    unsigned short height = node->height;
    unsigned short startRow = node->startRow;
    unsigned short startCol = node->startCol;

    // if node is a leaf node
    if(get_child1(node) == NULL) {

        for(int row = startRow; row<(height+startRow); row ++){
            for (int col = startCol; col<(width+startCol); col++){
                int bufferIndex = row * imageWidth + col;
                buffer[bufferIndex] = get_node_intensity(node);
            }
        }
    } else {
        getIntensities(node->child1, buffer, imageWidth);
        getIntensities(node->child2, buffer, imageWidth);
        getIntensities(node->child3, buffer, imageWidth);
        getIntensities(node->child4, buffer, imageWidth);
    }
}

void save_qtree_as_ppm(QTNode *root, char *filename) {
    FILE *file = fopen(filename, "w");

    if(!file){
        perror("could not open file for writing");
        return;
    }

    fprintf(file, "P3\n");
    fprintf(file, "%d %d\n", root->width, root->height);
    fprintf(file, "255\n");

    unsigned char * buffer = malloc (sizeof(unsigned char) * root->width * root->height);
    getIntensities(root, buffer, root->width);

    for (int i = 0; i < root->height; ++i) {
        for (int j = 0; j < root->width; ++j) {
            int index = (i * root->width) + j;
            fprintf(file, "%d %d %d\n", buffer[index], buffer[index], buffer[index]);
        }
    }

    free(buffer);
    fclose(file);
}

QTNode *load_preorder_qt(char *filename) {
    (void)filename;
    return NULL;
}

void save_preorder_qt(QTNode *root, char *filename) {
    (void)root;
    (void)filename;
}

