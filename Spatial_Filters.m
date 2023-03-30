clear all
a=imread('sun.PNG');
b=rgb2gray(a);
r=im2double(b);
[m,n] = size(r);
fil=[1 1 1;1 1 1;1 1 1]

%Box Filter
for i=2:m-1
    for j=2:n-1
        h=[fil(1,1)*r(i-1,j-1) fil(1,2)*r(i-1,j) fil(1,3)*r(i-1,j+1);...
            fil(2,1)*r(1,j-1) fil(2,2)*r(i,j) fil(2,3)*r(i,j+1);...
            fil(3,1)*r(i+1,j-1) fil(3,2)*r(i+1,j) fil(3,3)*r(i+1,j+1)];
  out(i,j)=(1/9)*sum(sum(h));
    end
end
imshow(b);
%figure,imshow(out);


%Order statistics
%Max filter
for i=2:m-1
    for j=2:n-1
        h=[fil(1,1)*r(i-1,j-1) fil(1,2)*r(i-1,j) fil(1,3)*r(i-1,j+1);...
            fil(2,1)*r(1,j-1) fil(2,2)*r(i,j) fil(2,3)*r(i,j+1);...
            fil(3,1)*r(i+1,j-1) fil(3,2)*r(i+1,j) fil(3,3)*r(i+1,j+1)];
  out1(i,j)=max(max(h));
    end
end
%figure,imshow(out1);

%Min filter
for i=2:m-1
    for j=2:n-1
        h=[fil(1,1)*r(i-1,j-1) fil(1,2)*r(i-1,j) fil(1,3)*r(i-1,j+1);...
            fil(2,1)*r(1,j-1) fil(2,2)*r(i,j) fil(2,3)*r(i,j+1);...
            fil(3,1)*r(i+1,j-1) fil(3,2)*r(i+1,j) fil(3,3)*r(i+1,j+1)];
  out2(i,j)=min(min(h));
    end
end
%figure,imshow(out2);

%Sharpening filter
fil=[0 -1 0;-1 4 -1;0 -1 0];
r=im2double(a);
for i=2:m-1
    for j=2:n-1
        h=[fil(1,1)*r(i-1,j-1) fil(1,2)*r(i-1,j) fil(1,3)*r(i-1,j+1);...
            fil(2,1)*r(1,j-1) fil(2,2)*r(i,j) fil(2,3)*r(i,j+1);...
            fil(3,1)*r(i+1,j-1) fil(3,2)*r(i+1,j) fil(3,3)*r(i+1,j+1)];
  out3(i,j)=(1/9)*sum(sum(h));
    end
end

figure,imshow(out3);
