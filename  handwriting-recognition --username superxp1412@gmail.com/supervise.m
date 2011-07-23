function supervise
%The runnable file. Reads an image, gets the size, extracts the edges,
%   finds the bounding box by cropping to the minimum possible square,
%   divides the image into several equisized parts.



%   TODO: to move the sizes and numbers of the segements from 'improcess'
%   to this file
close all;
clear all;
start = '1';
finish = '4';
index = 0;
data = zeros(4,9)
for i = start:finish
    % Prepare the image s
    
    %img = im2double(imread(strcat('a4.jpg')));
    %loading files from here
    img = im2double(imread(strcat('A/a', i, '.jpg')));
    [bingrid, shape] = improcess_m(img(:, :, 1));
    index = index+1;
    subplot(3,2, index);
    imshow(shape);
    data(index,:) = bingrid(:)';
end
%dec2bin(bingrid)
%data=bingrid(:)
data = (data==0)+data
% data1 = data(1,:)
%data1 represent the test data
 data1=[1,219,4,1,360,294,66,1,411]
hmm
