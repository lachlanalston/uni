% Load image as double
RGB = imread("lighthouse.png");
RGB = im2double(RGB);

% Add Noise
noiseRGB = imnoise(RGB,'gaussian', 0,0.01);

% Extract RGB Values
R = noiseRGB(:,:,1);
G = noiseRGB(:,:,2);
B = noiseRGB(:,:,3);

% Remove Noise
net = denoisingNetwork('dncnn');
denoisedR = denoiseImage(R,net);
denoisedG = denoiseImage(G,net);
denoisedB = denoiseImage(B,net);

% Add denoised planes to RGB
newRGB = cat(3, denoisedR,denoisedG, denoisedB);

% Display
figure, imshow(RGB), title('Original RGB Image');
figure, imshow(noiseRGB), title('Image with Noise');
figure, imshow(newRGB), title('Image with Noise Extracted');

% Calcuate PSNR
noisePSNR = psnr(noiseRGB,RGB);
cleanPSNR = psnr(newRGB,RGB);

% Print PSNR
fprintf("\n The Peak-SNR value for Original Image is %0.4f", noisePSNR);
fprintf("\n The Peak-SNR value for Cleaned Image is %0.4f", cleanPSNR);
