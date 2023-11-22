%limpeza de ambiente

clear;
close all;
clc;

%Imagem original
img=imread('danielfilho.jpg'); %Imagem a ser processada/Imagem original

i=figure;subplot(1, 3, 1);
imshow(img); %Mostra a imagem original

a=img(10:50,10:50) %Mostra as as linhas de 10 a 50 e das colunas de 10 a 50
title('Imagem Original');

%imagem fourier
fourier = fft2(img); % Aplica a transformada de fourier á imagem original
b=fourier(10:50,10:50) % Mostra as as linhas de 10 a 50 e das colunas de 10 a 50 da imagem tranformada com fourier
i=subplot(1, 3, 2);
imshow(fourier); % Mostra a imagem transformada
title('Imagem com Fourier');


%Imagem ruído
img_ruidosa=imnoise(img,'salt & pepper', 0.9); % Aplica o efeito "sal e pimenta"
i=subplot(1, 3, 3);imshow(img_ruidosa); %Mostrar o efeito de Sal e Pimenta
title('Imagem com ruído');
