function Bw= my_normalize(I)
% 
% 
if ndims(I)==3
    Gray = rgb2gray(I);
else
    Gray = I;
end
%%
Bw = imresize(Gray,[60,20],'nearest');
