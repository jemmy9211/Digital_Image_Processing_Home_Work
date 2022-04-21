img=imread("../DIP_dataset/Fig0441(a)(characters_test_pattern).tif");
img2=real(fft2(img));
imshow(img2);
avg=mean2(img2);
display(avg);