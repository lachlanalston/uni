%Setup Detection
faceDetector = vision.CascadeObjectDetector();
noseDetect = vision.CascadeObjectDetector('Nose', 'MergeThreshold', 16);
mouthDetect = vision.CascadeObjectDetector('Mouth', 'MergeThreshold', 20);
eyeDetect = vision.CascadeObjectDetector('EyePairBig');

%Border Setup
shapeInserter = vision.ShapeInserter('BorderColor', 'Custom', 'CustomBorderColor', [0 255 255]);

% Open image 
I = imread('Lena.png');
imshow(I); %Shows original image

% Opens Graph
shg;
bboxFace = step(faceDetector, I);
bboxNose = step(noseDetect, I);
bboxMouth = step(mouthDetect, I);
bboxEye = step(eyeDetect, I);

% Setup boxes
I_faces = step(shapeInserter, I, int32(bboxFace));
I_nose = step(shapeInserter, I, int32(bboxNose));
I_mouth = step(shapeInserter, I, int32(bboxMouth));
I_eye = step(shapeInserter, I, int32(bboxEye));

% Draw Boxes
figure, imshow(I_faces), title('Detected Faces');
figure, imshow(I_nose),title('Detected Noses');
figure, imshow(I_mouth),title('Detected Mouths');
figure, imshow(I_eye),title('Detected Eyes');
