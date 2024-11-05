clc; 
clear all; 
close all; 

x = input("Enter sequence: "); 
N = input("Enter the N-point: "); 

l = length(x); 
x = [x, zeros(1, N - l)]; 
X = zeros(1, N); 

for k = 0:N-1 
    for n = 0:N-1 
        X(k + 1) = X(k + 1) + x(n + 1) * exp(-1j * 2 * pi * n * k / N); 
    end 
end 

disp('X:'); 
disp(X); 
disp('Rounded X:'); 
disp(round(X));

% Verification with built-in FFT
disp('FFT of x:'); 
disp(fft(x));

% Define k for plotting
k = 0:N-1;
magX = abs(X);
phaseX = angle(X);

% Plotting
subplot(2, 1, 1);
stem(k, magX);
title("Magnitude Plot");
hold on;
plot(k, magX);

subplot(2, 1, 2);
stem(k, phaseX);
title("Phase Plot");
hold on;
plot(k, phaseX);