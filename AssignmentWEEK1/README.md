# RoboticEstimationLearning

Assignment of Robotic Estimation Learning from coursea

In this assignment you will be estimating a Gaussian model for ball color and developing a target ball detection function based on the color model.

Phase 1. Color Model Learning

    1.Collect sample colors of the YELLOW ball from training images. You will create your own samples using the MATLAB function roipoly. (See example_rgb.m)
    2.Visualize and observe the color distribution of the collected samples. You may convert the color space using functions such as rgb2hsv, rgb2lab, etc.
    3.Determine the dimension D for your model (and number of Gaussians if you want to try GMM.)
    4.Write a function to estimate your model parameters, that is, the mean and the (co)variance, from the sample data.
    5.You may want to save the parameters into a .mat file for later use.

Phase 2. Target Color Detection

    1.You will write a function that take a new image and you model parameters as input, and returns the color-segmented binary image and the center location of the ball segment.
    2.Load or hard code the estimated model parameters inside the function.
    3.In order to segment the target color out from an input image, you will need to set a threshold probability to classify the target. This is equivalent to having a uniform distribution model of other colors.
    4.Your function should return a binary image as a result of segmentation.
    5.In order to compute the location of the ball, you can consider applying some filtering on the binary image. Useful MATLAB Image Processing Toolbox functions include bwconncomp, regionprops, and so on. 

Phase 3. Target Color Detection

To submit your result to our server, you need to run the script runeval in your MATLAB command window. Please specify the path where the encrypted test data are located. A script will then evaluate your detectBall and generate two output files (SubmissionBallSegmentation.mat and SubmissionBallLocation.mat) to be uploaded to the Coursera web UI. You may submit your result multiple times, and we will count only the highest score towards your grade. The score reflects how well the ball is segmented and how accurately the location is computed.


