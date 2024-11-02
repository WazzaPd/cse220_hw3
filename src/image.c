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
    if (fp == NULL) {
        perror("error opening file");
        return NULL;
    }

    Image *p = malloc(sizeof(Image));
    if (p == NULL) {
        fclose(fp);
        return NULL;
    }
    p->red = p->green = p->blue = NULL;  // Initialize to NULL

    int bufferSize = 13;
    char buffer[bufferSize];
    char c[2];

    // handle header
    fgets(buffer, bufferSize, fp);  // p3
    fgets(c, 2, fp);
    while (c[0] == '#') {
        do {
            fgets(c, 2, fp);
        } while (c[0] != '\n');
        fgets(c, 2, fp);
    }

    char widthS[5] = {0};
    int i = 0;
    while (c[0] != ' ' && i < 5) {
        widthS[i++] = c[0];
        fgets(c, 2, fp);
    }
    widthS[i] = '\0';

    fgets(c, 2, fp);
    char heightS[5] = {0};
    i = 0;
    while (c[0] != '\n' && i < 5) {
        heightS[i++] = c[0];
        fgets(c, 2, fp);
    }
    heightS[i] = '\0';

    p->width = (unsigned short)atoi(widthS);
    p->height = (unsigned short)atoi(heightS);

    p->red = malloc(sizeof(unsigned char) * p->width * p->height);
    p->green = malloc(sizeof(unsigned char) * p->width * p->height);
    p->blue = malloc(sizeof(unsigned char) * p->width * p->height);

    if (p->red == NULL || p->green == NULL || p->blue == NULL) {
        free(p->red); free(p->green); free(p->blue);  // Free any allocated arrays
        free(p);
        fclose(fp);
        return NULL;
    }

    fgets(buffer, bufferSize, fp);  // max intensity 255

    // handle body
    int r, g, b;
    for (int j = 0; j < p->width * p->height; j++) {
        if (fscanf(fp, "%d %d %d\n", &r, &g, &b) != 3) {
            fprintf(stderr, "Error reading pixel data\n");
            free(p->red); free(p->green); free(p->blue);
            free(p);
            fclose(fp);
            return NULL;
        }
        p->red[j] = (unsigned char)r;
        p->green[j] = (unsigned char)g;
        p->blue[j] = (unsigned char)b;
    }

    // for(int j = 0; j < (p->width * p->height); j++){
    //     printf( "Line %d: %d %d %d\n", j, (int)p->red[j], (int)p->green[j], (int)p->blue[j]);
    // }

    fclose(fp);
    return p;
}

// void createPPMgivenBase(char *filename, int multiplied){
//     FILE *newFile = fopen("images/createdPPM.ppm", "w");
//     if (!newFile) {
//         perror("Error creating new file");
//         return;
//     }
//     FILE * fp = fopen(filename, "r");


//     char line[256];
//     char c[2];
//     // handle header
//     fgets(line, 13, fp);  // p3
//     fgets(c, 2, fp);
//     while (c[0] == '#') {
//         do {
//             fgets(c, 2, fp);
//         } while (c[0] != '\n');
//         fgets(c, 2, fp);
//     }

//     char widthS[5] = {0};
//     int i = 0;
//     while (c[0] != ' ' && i < 3) {
//         widthS[i++] = c[0];
//         fgets(c, 2, fp);
//     }
//     widthS[i] = '\0';

//     fgets(c, 2, fp);
//     char heightS[5] = {0};
//     i = 0;
//     while (c[0] != '\n' && i < 3) {
//         heightS[i++] = c[0];
//         fgets(c, 2, fp);
//     }
//     heightS[i] = '\0';

//     int width = atoi(widthS);
//     int height = atoi(heightS);

//     // Allocate an initial buffer
//     char *buffer = malloc(1);
//     buffer[0] = '\0';
//     size_t bufferSize = 1;

//     // Read the rest of the file and store it in the buffer
//     while (fgets(line, sizeof(line), fp)) {
//         bufferSize += strlen(line);
//         buffer = realloc(buffer, bufferSize);
//         strcat(buffer, line);
//     }

//     //create new file
//     fprintf(newFile, "P3\n");
//     fprintf(newFile, "%d %d\n", width*multiplied, height*multiplied);
//     fprintf(newFile, "255\n");

//     for(int j = 0; j< (multiplied*multiplied); j ++){
//         fprintf(newFile, "%s",buffer);
//     }
//     fclose(fp);
//     fclose(newFile);
//  }

void delete_image(Image *image) {
    if (image == NULL) return;

    if (image->red) free(image->red);
    if (image->green) free(image->green);
    if (image->blue) free(image->blue);

    free(image);
}


unsigned short get_image_width(Image *image) {
    if (image == NULL) return 0;
    return image->width;
}

unsigned short get_image_height(Image *image) {
    if (image == NULL) return 0;
    return image->height;
}

unsigned char get_image_intensity(Image *image, unsigned int row, unsigned int col) {
    if (image == NULL) return 0;
    unsigned int index = (row)*(image->width);
    index += (col);
    return image->red[index];
}

unsigned int hide_message(char *message, char *input_filename, char *output_filename) {
    FILE * fp = fopen(input_filename, "r");
    FILE * newFile = fopen(output_filename, "w");

    char line[256];
    char c[2];
    // handle header
    fgets(line, 13, fp);  // p3
    fgets(c, 2, fp);
    while (c[0] == '#') {
        do {
            fgets(c, 2, fp);
        } while (c[0] != '\n');
        fgets(c, 2, fp);
    }

    char widthS[5] = {0};
    int i = 0;
    while (c[0] != ' ' && i < 3) {
        widthS[i++] = c[0];
        fgets(c, 2, fp);
    }
    widthS[i] = '\0';

    fgets(c, 2, fp);
    char heightS[5] = {0};
    i = 0;
    while (c[0] != '\n' && i < 3) {
        heightS[i++] = c[0];
        fgets(c, 2, fp);
    }
    heightS[i] = '\0';
    int width = atoi(widthS);
    int height = atoi(heightS);
    fprintf(newFile, "P3\n");
    fprintf(newFile, "%d %d\n", width, height);
    fprintf(newFile, "255\n");

    // handle body
    int red; 
    int green; 
    int blue;
    int messageSize = (strlen(message) + 1) * 8;
    int messageIndex = 0;
    int messageBitCounter = 0;
    char encodeChar = message[messageIndex];
    int printableChars = 0;

    if(messageSize > width*height){
        printableChars = ((width*height) / 8) - 1;

    }else{
        printableChars = strlen(message);
        for (int j = 0; j < width * height; j++) {
            if (fscanf(fp, "%d %d %d\n", &red, &green, &blue) != 3) {
                fprintf(stderr, "Error reading pixel data\n");
                fclose(fp);
                return -1;
            }
            if(messageIndex <= (messageSize/8)){
                if((encodeChar >> (8 - messageBitCounter)) & 1){            // encode 1
                    red = red | 1;
                    green = green | 1;
                    blue = blue | 1;
                } else{                                                     // encode 0
                    red = red & ~1;
                    green = green & ~1;
                    blue = blue & ~1;
                }
                messageBitCounter ++;

                if(messageBitCounter % 8 == 0){
                    messageBitCounter = 0;
                    messageIndex ++;
                    encodeChar = message[messageIndex];
                }
            }
            fprintf(newFile, "%d %d %d\n", red, green, blue);
        }
    }
    return printableChars;
}

// void populateNewFile(FILE * fp, FILE * newFile, char *message){

// }

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
