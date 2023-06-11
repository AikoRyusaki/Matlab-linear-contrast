In the lab2_OutputFcn function, we display the original image on the screen.

To solve the given task, I decided to use MATLAB because it combines all the necessary mathematical functions and a convenient graphical user interface editor.

To facilitate further display, we create a getter for the global variable Img, which will store the original image, and pass the image to the variable immediately.

In the lab3_OutputFcn function, we display the original image on the screen.

In the cont_Callback function, we find the minimum (min_val) and maximum (max_val) intensity values of the original image. Then, we stretch the intensity range by linearly transforming the values from the [min, max] range to the [0, 255] range. We display the resulting image.

Results:

<img src=https://github.com/AikoRyusaki/Matlab-linear-contrast/assets/136241809/9864b738-6155-47f0-bca9-3287ef46ac61>
<img src=https://github.com/AikoRyusaki/Matlab-linear-contrast/assets/136241809/23fafb6e-2485-4caf-abbc-b706184b91c8>
<img src=https://github.com/AikoRyusaki/Matlab-linear-contrast/assets/136241809/f52c492c-ede9-478e-913e-82c2edbe8ec3>
