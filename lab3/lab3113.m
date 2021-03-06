
clc
clear all;
close all;

I2=imread('saturn_noise.png');
Mav=ones(3)/9;
Mgaus=[1 4 1; 4 16 4; 1 4 1]/36;
I2av=imfilter(I2,Mav);
I2gaus=imfilter(I2,Mgaus);
subplot(2,2,1), imshow(I2,[]);
subplot(2,2,2), plot(I2(100,:));
subplot(2,2,3), imshow(I2gaus,[]);
subplot(2,2,4), plot(I2gaus(100,:));

figure

subplot(2,2,1), imshow(I2,[]);
subplot(2,2,2), plot(I2(100,:));
subplot(2,2,3), imshow(I2av,[]);
subplot(2,2,4), plot(I2av(100,:));