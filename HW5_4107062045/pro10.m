img=imread("../DIP_dataset/Fig0628(b)(jupiter-Io-closeup).tif");
img=im2gray(img);
[p,q]=size(img);
%surf(img,'edgecolor','none');
for i=1:p
    for j=1:q
        if(img(i,j)<30)
            img(i,j,1)=255;
            img(i,j,2)=0;
            img(i,j,3)=0;
        elseif(img(i,j)>30)
            img(i,j,1)=img(i,j);
            img(i,j,2)=img(i,j);
            img(i,j,3)=img(i,j);
        
        end
    end
end
%img=im2gray(img);
imshow(img);