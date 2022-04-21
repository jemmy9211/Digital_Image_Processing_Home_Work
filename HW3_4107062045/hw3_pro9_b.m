img=imread("../DIP_dataset/Fig0235(c)(kidney_original).tif");
[Gx,Gy] = imgradientxy(img);

[Gmag,Gdir] = imgradient(Gx,Gy);
thresh=graythresh(Gmag);
display(thresh);
img3=imbinarize(Gmag,60);
imshowpair(Gmag,img3,'montage');
title('Gradient Magnitude (Left) and binary image with threshhold (Right)')