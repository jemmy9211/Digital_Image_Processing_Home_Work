img=imread("../DIP_dataset/Fig0635(bottom_left_stream).tif");
redChannel = img(:,:,1); % Red channel
greenChannel = img(:,:,2); % Green channel
blueChannel = img(:,:,3); % Blue channel
allBlack = zeros(size(img, 1), size(img, 2), 'uint8');
just_red = cat(3, redChannel, allBlack, allBlack);
just_green = cat(3, allBlack, greenChannel, allBlack);
just_blue = cat(3, allBlack, allBlack, blueChannel);
histred=histeq(just_red);
histgreen=histeq(just_green);
histblue=histeq(just_blue);
histred=histred(:,:,1);
histgreen=histgreen(:,:,2);
histblue=histblue(:,:,3);
histimg=cat(3,histred,histblue,histgreen);
imshow(histimg);