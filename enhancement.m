a=imread('chest.jpg');
%imshow(a);

%negative transformation
neg_a=255-a;
%figure('Name','Negative'),imshow(neg_a);

%logarithmic transformation
lg_a=im2double(a);
[m,n]=size(a);
for i=1:m-1
    for j=1:n-1
        lg_a(i,j)=2*log(lg_a(i,j)+1);
    end
end
%figure('Name','Logaritmic'),imshow(lg_a);


%powerlaw transformation
pl=im2double(a);
gamma=2;
[m,n]=size(a);
for i=1:m
    for j=1:n
        pl(i,j)=pl(i,j).^(gamma);
    end
end
%figure('Name','PowerLaw'),imshow(pl);

subplot(221);imshow(a);title('Input');
subplot(222);imshow(neg_a);title('Negative');
subplot(223);imshow(lg_a);title('Logarithmic');
subplot(224);imshow(pl);title('PowerLaw');


