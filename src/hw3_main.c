#include "qtree.h"
#include "image.h"

#include "tests_utils.h"

int main() {
    struct stat st;
    if (stat("tests/output", &st) == -1)
        mkdir("tests/output", 0700);
    prepare_input_image_file("building1.ppm"); // copies the image to the images/ directory

    /******************************* create_quadtree *******************************/
    double max_rmse = 25;
    Image *image = load_image("images/building1.ppm");
    QTNode *root = create_quadtree(image, max_rmse);
    // See tests/input/load_preorder_qt1_qtree.txt for the expected results


    // You will need to write your own code to verify that your quadtree was constructed properly
    delete_quadtree(root);
    delete_image(image);

    // prepare_input_image_file("testing.ppm");
    // createPPMgivenBase("images/testing.ppm", 200);
    // image = load_image("images/createdPPM.ppm");
    // root = create_quadtree(image, 11);
    // save_qtree_as_ppm(root, "tests/output/outputCreatedPPM.ppm");
    // delete_quadtree(root);
    // delete_image(image);


    prepare_input_image_file("testing.ppm");
    max_rmse = 11;
    image = load_image("images/testing.ppm");
    root = create_quadtree(image, max_rmse);
    save_qtree_as_ppm(root, "tests/output/test1.ppm");
    delete_quadtree(root);
    delete_image(image);

    /******************************* load_preorder_qt *******************************/
    // tests/input/load_preorder_qt1_qtree.txt was generated by executing the following code:
    //   QTNode *root = create_quadtree(load_image("images/building1.ppm"), 25);
    root = load_preorder_qt("tests/input/load_preorder_qt1_qtree.txt");
    save_preorder_qt(root, "tests/output/save_preorder_qt1_qtree.txt");
    save_qtree_as_ppm(root, "tests/output/load_preorder_qt1_qtree.ppm");
    // You will need to write your own code to verify that your quadtree was constructed properly
    delete_quadtree(root); 

    /******************************* save_preorder_qt *******************************/
    image = load_image("images/building1.ppm"); 
    root = create_quadtree(image, 25);
    // See tests/input/load_preorder_qt1_qtree.txt for expected output
    //save_preorder_qt(root, "tests/output/save_preorder_qt1_qtree.txt");
    delete_quadtree(root);
    delete_image(image);

    /******************************* save_qtree_as_ppm *******************************/
    image = load_image("images/building1.ppm"); 
    root = create_quadtree(image, 25);
    save_qtree_as_ppm(root, "tests/output/save_qtree_as_ppm1.ppm");
    // See tests/expected/save_qtree_as_ppm1.ppm for the expected file.
    // Visual inspection is generally not sufficient to determine if your output image is correct.
    // You will need to write code to more rigorously check your output image for correctness.
    delete_image(image); 
    delete_quadtree(root);

    /******************************* hide_message and reveal_message *******************************/
    prepare_input_image_file("wolfie-tiny.ppm");
    image = load_image("images/wolfie-tiny.ppm");
    delete_image(image); 
    hide_message("0000000000111111111122222222223333OERFLOW", "images/wolfie-tiny.ppm", "tests/output/hide_message1.ppm");
    char *message = reveal_message("tests/output/hide_message1.ppm");
    printf("Message: %s\n", message);
    free(message);

    /******************************* hide_image and reveal_image *******************************/
    hide_image("images/wolfie-tiny.ppm", "images/building1.ppm", "tests/output/hide_image1.ppm");
    reveal_image("tests/output/hide_image1.ppm", "tests/output/reveal_image1.ppm");

    return 0;
}