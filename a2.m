L = im2double(imread('image_06.png'));
figure, imshow(L)

L_gray = rgb2gray(L);
F = fftshift(fft2(L_gray));
F1 = abs(F);

[M, N] = size(F1);
x = round(N/2); 
y = round(M/2);
F1(y-5:y+5, x-5:x+5) = 0;

thresh = max(F1(:)) * 0.6;
mask = F1 < thresh;

L1 = L;
for i = 1:3
    F_akt = fftshift(fft2(L(:, :, i)));
    F_szurt = F_akt .* mask;
    L1(:, :, i) = real(ifft2(ifftshift(F_szurt)));
end

figure, imshow(log(1 + abs(F)), []), title('fourier spectr')

L2 = L1;
for i = 1:3
    L2(:, :, i) = medfilt2(L1(:, :, i), [3 3]);
end

H = rgb2hsv(L2);
H(:, :, 3) = adapthisteq(H(:, :, 3));
L3 = hsv2rgb(H);

figure, montage({L, L1, L3}, 'Size', [1 3])

figure, imshow(L2)
figure, imshow(L3)