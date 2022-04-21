f=imread("Fig0340(a)(dipxe_text).tif");
subplot(1,2,1);
imshow(f);
subplot(1,2,2);
k=double(f);
Laplacian=[1 1 1; 1 -8 1; 1 1 1];
k=conv2(k, Laplacian, 'same');
imshow(k);
