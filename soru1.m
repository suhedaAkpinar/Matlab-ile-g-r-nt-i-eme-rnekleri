clear all
clc
Res = imread('C:\Users\Administrator\Desktop\Görüntüvizesoruları\resimler\1024pic.jpg');
whos Res %Resmin orjinal boyutu
b=imresize(Res,[ 128  128]); %boyutunu küçülttüm
whos b
grayimage = rgb2gray(b);
negimage=imadjust(grayimage,[0 1],[1 0]);%burada negatifini aldım
subplot(1,4,1),
imshow(Res), title('Orijinal resim')
subplot(1,4,2),
imshow(grayimage), title('Gri resim')
subplot(1,4,3),
imshow(negimage), title('Negatif resim')
subplot(1,4,4),
h=imshow(grayimage);
set(h,'AlphaData',0.6),title('Transparent Alma')
