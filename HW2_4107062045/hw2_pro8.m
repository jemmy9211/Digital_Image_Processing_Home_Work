f=imread("Fig0308(a)(fractured_spine).tif");
subplot(1,4,1);
imhist(f,64);
subplot(1,4,2);
j=histeq(f);
imhist(j,64);
subplot(1,4,3);
imshow(f);
subplot(1,4,4);
imshow(j);