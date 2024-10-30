#include "image.h"

// returns 1 if true, 0 if false
int includesChar(char * string, char c){
    char * iterator = string;
    while(*iterator != '\0' ){
        if (*iterator == c){
            return 1;
        }
        iterator++;
    }
    return 0;
}

void nextColor(Color * color){
    switch(*color){
        case RED:
            *color = GREEN;
            break;
        case GREEN:
            *color = BLUE;
            break;
        case BLUE:
            *color = RED;
            break;
    }
}

void insertColor(Image * p, Color * color, int intensity, int colorArrayIndex){
    switch(*color){
        case RED:
            p->red[colorArrayIndex] = (char)intensity;
            break;
        case GREEN:
            p->green[colorArrayIndex] = (char)intensity;
            break;
        case BLUE:
            p->blue[colorArrayIndex] = (char)intensity;
            break;
    }
}

Image *load_image(char *filename) {    
    FILE *fp = fopen(filename, "r");

    Image *p = malloc(sizeof(Image));

    if(fp == NULL){
        perror("error opening file");
        return NULL;
    }

    int bufferSize = 13;
    char buffer[bufferSize];
    char c[2];

    //handle header
    fgets(buffer, bufferSize, fp);  // p3
    fgets(c, 2, fp);
    while(c[0] == '#'){     // eliminate comments
        do{
            fgets(c, 2, fp);
        }
        while(c[0] != '\n');
        fgets(c, 2, fp);
    }
    char widthS[4];         // max of 3 digits width
    int i = 0;
    while (c[0] != ' '){
        widthS[i] = c[0];
        i ++;
        fgets(c, 2, fp);
    }

    fgets(c, 2, fp);
    char heightS[4];         // max of 3 digits height
    i = 0;
    while (c[0] != '\n'){
        heightS[i] = c[0];
        i ++;
        fgets(c, 2, fp);
    }
    p->width = atoi(widthS);
    p->height = atoi(heightS);
    p->red = malloc(sizeof(char) * p->width * p->height);
    p->green = malloc(sizeof(char) * p->width * p->height);
    p->blue = malloc(sizeof(char) * p->width * p->height);

    fgets(buffer, bufferSize, fp);   // max intensity 255

    Color currentColor = RED;
    char num[4];
    int numIndex = 0;
    int colorArrayIndex = 0;

    //handle Body
    while (fgets(c, 2, fp)){
        if(c[0] == ' ' || c[0] == '\n'){
            num[numIndex] = '\0';
            int intensity = atoi(num);
            numIndex = 0;
            insertColor(p, &currentColor, intensity, colorArrayIndex);

            nextColor(&currentColor);
            if(currentColor == RED){
                colorArrayIndex ++;
            }
            continue;
        }
        num[numIndex] = c[0];
        numIndex ++;
    }

    // for(int j = 0; j < (p->width * p->height); j++){
    //     printf( "%d %d %d\n", (int)p->red[j], (int)p->green[j], (int)p->blue[j]);
    // }

    return p;
}

void delete_image(Image *image) {
    free(image->red);
    free(image->green);
    free(image->blue);
    free(image);
}

unsigned short get_image_width(Image *image) {
    return image->width;
}

unsigned short get_image_height(Image *image) {
    return image->height;
}

unsigned char get_image_intensity(Image *image, unsigned int row, unsigned int col) {
    unsigned int index = row*col;
    return image->red[index];
}

unsigned int hide_message(char *message, char *input_filename, char *output_filename) {
    (void)message;
    (void)input_filename;
    (void)output_filename;
    return 0;
}

char *reveal_message(char *input_filename) {
    (void)input_filename;
    return NULL;
}

unsigned int hide_image(char *secret_image_filename, char *input_filename, char *output_filename) {
    (void)secret_image_filename;
    (void)input_filename;
    (void)output_filename;
    return 10;
}

void reveal_image(char *input_filename, char *output_filename) {
    (void)input_filename;
    (void)output_filename;
}
