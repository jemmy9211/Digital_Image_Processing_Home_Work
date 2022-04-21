f=imread("Fig0220(a)(chronometer 3692x2812  2pt25 inch 1250 dpi).tif");
a=imresize(f,1/12);
b=imresize(a,12);

subplot(1,2,1);
imshow(a);
subplot(1,2,2);
imshow(b);

