# Training a CNN model based on VGG

Our main objectives are to evaluate the inlcination of a spiral galaxy from its images, whether it is presented in graysclae or colorful formats.
Moreover, we need to know what is the possibility of the rejection of the given image by a human user. Images are rejected in cases they have poor quality or contain 
bright objets that influence the process of measuring the inclination of the target galaxy. Very face-on galaxies are also rejected.

We tackle the problem through two sets of models.

1. To determine the inclination of galaxies, we investigate 3 models, weach of which is constructed based on the VGG network, where convolutional filters of size 3x3 are used. The last layer benefits from the `tanh` activation function to generate number in a finite range, because the spatial inclination of our spirals sample lie in range of 45 to 90 degrees.
2. To determine the accept/reject labels, we build three other networks which are very similar to the regression networks except the very last layer which is devoted to binary classification.






