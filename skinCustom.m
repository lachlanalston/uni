%Opens image - RGB
RGB = imread("Lena.png"); %Open Image

% Convert to YCBCR
YCBCR = rgb2ycbcr(RGB);
figure, imshow(YCBCR);

%Convert to HSV
HSV = rgb2hsv(RGB);
figure, imshow(HSV);

% Main
Y=YCBCR(:,:,1);
Cb=YCBCR(:,:,2); 
Cr=YCBCR(:,:,3);

% Display
figure, imshow(Y);
figure, imshow(Cb); 
figure, imshow(Cr);