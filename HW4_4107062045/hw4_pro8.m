img=imread("../DIP_dataset/Fig0507(a)(ckt-board-orig).tif");
I=imnoise(img,"salt & pepper",0.2);
J=medfilt2(I,[3,3]);
subplot(1,2,1),imshow(img);
subplot(1,2,2),imshowpair(I,J,"montage");
