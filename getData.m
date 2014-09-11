m = 6283;
X = ones(m,400);
for a = 1:m
   filename = [num2str(a) '.Bmp'];
   img = imread(filename);
   if size(img, 3) == 3
        I = rgb2gray(img);
   end
   X(a,:) = I(:);
end