img=imread("../DIP_dataset/Fig0526(a)(original_DIP).tif");
subplot(2,3,1);
imshow(img);
title("original image");

PSF=fspecial("motion",30,45);
img1=imfilter(img,PSF,"conv","circular");
subplot(2,3,2);
imshow(img1);
title("filtered image");

img2=imnoise(img1,"gaussian",0,0.001);
subplot(2,3,3);
imshow(img2);
title("add gaussian image");

img3=deconvwnr(img2,PSF,0.0);
subplot(2,3,4);
imshow(img3);
title("WNR nsr=0 image");

img=double(img);
img4=deconvwnr(img2,PSF,(100/var(img(:))));
subplot(2,3,5);
imshow(img4);
title("WNR nsr(estimate) image");
