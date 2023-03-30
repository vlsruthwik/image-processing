a=imread('chest.jpg');

subplot(211);imhist(a);title('Histogram Original');

b = a+50;
subplot(212);imhist(b);title('Histogram Sliding');

%In Histogram Stretching we stretch or squeeze it in a fixed region

c=histeq(a);
figure();
subplot(211);imshow(a);title('Original');
subplot(212);imshow(c);title('Histogram Equalization');