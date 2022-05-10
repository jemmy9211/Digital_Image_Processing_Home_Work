I = imread("../DIP_dataset/Fig0526(a)(original_DIP).tif");
I=imresize(I,[256,256]);
[x, y] = meshgrid(1:256,1:256);
sinusoidalnoise = 100 * sin(2*pi/128*x+2*128/14*y);
I = double(I) + sinusoidalnoise;
ft = fftshift(fft2(I));
[m,n] = size(ft);

% define some functions
norm_img = @(img) (img - min(img(:))) / (max(img(:)) - min(img(:)));
show_spec = @(img) imshow(norm_img(log(abs(img)-min(abs(img(:)))+1.0001)));
gNotch = @(v,mu,cov) 1-exp(-0.5*sum((bsxfun(@minus,v,mu).*(cov\bsxfun(@minus,v,mu)))));
% show spectrum before
subplot(1,3,1),show_spec(ft);
% by inspection
cx = 129;
cy = 129;
% distance of noise from center
wx1 = 149.5-129;
wx2 = 165.5-129;
wy  = 157.5-129;
% create notch filter
filt = ones(m,n);
% use gaussian notch with standard deviation of 5
sigma = 5;
[y,x] = meshgrid(1:n, 1:m);
X = [y(:) x(:)].';
filt = filt .* reshape(gNotch(X,[cx+wx1;cy+wy],eye(2)*sigma^2),[m,n]);
filt = filt .* reshape(gNotch(X,[cx+wx2;cy+wy],eye(2)*sigma^2),[m,n]);
filt = filt .* reshape(gNotch(X,[cx-wx1;cy-wy],eye(2)*sigma^2),[m,n]);
filt = filt .* reshape(gNotch(X,[cx-wx2;cy-wy],eye(2)*sigma^2),[m,n]);
% apply filter
ft = ft .* filt;
% show spectrum after
subplot(1,3,2),show_spec(ft);
% compute inverse
ifft_ = ifft2(ifftshift( ft));
img_res = norm_img(ifft_);
subplot(1,3,3),imshow(img_res);
