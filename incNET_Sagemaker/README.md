# Multiclass Galaxy Image Classification in AWS Sagemaker 

In this demo, the Amazon sagemaker image classification algorithm is used to train on the
incNET galaxy images.

## Data Structure

- Training Data: `AWS_64x64_train.rec`
- Validation Data: `AWS_64x64_val.rec`
- Test Data
   - `<inc>_pgc<id>_<i>.jpg` where `<inc>` is the galaxy label (discussed below),
     `<id>` is the galaxy ID number and `<i>` represents the orientation of the image with 0 being the original image and 1, 2, and 3 are its fillped versions.

## AWS SageMaker Notebook

- `incNET_AWSsagemaker.ipynb`
