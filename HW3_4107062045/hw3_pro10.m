input_image=imread("../DIP_dataset/Fig0457(a)(thumb_print).tif");
[M, N] = size(input_image);
A=im2double(input_image);  
FT_img = fft2(double(input_image),M*2,N*2);
FTS_img=fftshift(FT_img);
D0 = 60;
H=GaussianHighpass(A,D0);
G=FTS_img.*H;
FTS_img_2=ifftshift(G);
output_image=ifft2(FTS_img_2);
output_image=output_image(1:size(A,1),1:size(A,2));
imshow(real(output_image));

  
function H = GaussianHighpass(img,D0)
    [M,N]=size(img);
    H=zeros(2*M,2*N);

    for u=1:2*M
        for v=1:2*N
            D_square=(u-M)*(u-M)+(v-N)*(v-N);
            H(u,v)=1-exp(-D_square/(2*D0*D0));
        end
    end

end
%output_image = real(ifft2(double(G)));;
%imshowpair(input_image,output_image,'montage');
