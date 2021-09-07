# Training a CNN model based on VGG

Our main objectives are to evaluate the inclination of a spiral galaxy from its images, whether it is presented in grayscale or colorful formats.
Moreover, we need to know what is the possibility of the rejection of the given image by a human user. Images are rejected in cases they have poor quality or contain 
bright objects that influence the process of measuring the inclination of the target galaxy. Very face-on galaxies are also rejected.

We tackle the problem from two different angles.

1. To determine the inclination of galaxies, we investigate 3 models, each of which is constructed based on the VGG network, where convolutional filters of size 3x3 are used. The last layer benefits from the `tanh` activation function to generate number in a finite range, because the spatial inclination of our spirals sample lie in range of 45 to 90 degrees.
2. To determine the accept/reject labels, we build three other networks which are very similar to the regression networks except the very last layer which is devoted to binary classification.

Models are sorted based on their complexity and labeled as `model4`, `model5` and `model6`, with `model4` being the simplest one. 

## Model4

![image](https://user-images.githubusercontent.com/13570487/132303628-6657d08f-7ae3-4fe9-a96d-335569b5b150.png)

![image](https://user-images.githubusercontent.com/13570487/132303705-b84cea19-a492-4832-9cd4-57bd9535599b.png)


## Model5

![image](https://user-images.githubusercontent.com/13570487/132303862-d7901455-d591-45c5-9616-beaa6cb54eb4.png)


## Model6










