% números escolhidos: z1 = 5 + j8 (5,8) e z2 = (2, pi/3)
% letra a
% é necessário apenas seguir as instruções dadas para converter
[z1_rad, z1_mag] = cart2pol(5,8); 
[z2_real, z2_imag] = pol2cart(2, pi/3);

compass(z1_rad, z1_mag);
compass(z2_real, z2_imag);

%letra b
% para a multiplicação, utiliza-se a multiplicação de coordenadas
% cartesianas 
z1z2_real = (5*z2_real - 8*z2_imag); 
z1z2_imag = (5*z2_imag + 8 * z2_real);
z1z2 = z1z2_real + z1z2_imag*i
% o resultado será -9,7967 + j1,2748

%letra c
% utiliza-se a divisão de coordenadas cartesianas
z1z2_realD = (5*z2_real - 8*z2_imag)/((z2_real*z2_real) + (z2_imag*z2_imag));
z1z2_imagD = (5*z2_imag + 8*z2_real)/((z2_real*z2_real) + (z2_imag*z2_imag));
z1z2D = z1z2_realD + z1z2_imagD*i;
disp(z1z2D)
% o resultado será -8.9335 + 1.1624i
