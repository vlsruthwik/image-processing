clear all
a=imread('test_text.png');
r=im2gray(a);
[m,n]=size(r);
fil=[0 -1 0;-1 4 -1;0 -1 0];


imtool(r);
%150 below are written text

for i=1:m
    for j=1:n
        if(r(i,j)>140)
            res(i,j)=255;
        else
            res(i,j)=0;
        end
    end
end

figure,imshow(res);

r=im2double(res);
for i=2:m-1
    for j=2:n-1
        h=[fil(1,1)*r(i-1,j-1) fil(1,2)*r(i-1,j) fil(1,3)*r(i-1,j+1);...
            fil(2,1)*r(1,j-1) fil(2,2)*r(i,j) fil(2,3)*r(i,j+1);...
            fil(3,1)*r(i+1,j-1) fil(3,2)*r(i+1,j) fil(3,3)*r(i+1,j+1)];
  out1(i,j)=(1/9)*sum(sum(h));
    end
end
figure,imshow(out1);
    
