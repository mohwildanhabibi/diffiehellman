clc;%Clear command window
disp('Diffie Hellman Key Exchange');
disp('-----------------------------------------');
clear all; close all;%Clear variables in workspace and close figure

%Input value of g and p, and ensure that g and p is prime
prime = 0;
while prime == 0
    g = input('Masukkan Nilai g: ');
    p = input('Masukkan Nilai p: ');
    pg = isprime(g);
    pp = isprime(p);
    if pg == 0
        disp('g bukan prima');
    end
    if pp == 0
        disp('p bukan prima');
    end
    prime = pg & pp;
end

disp('---Nilai X---');
xa = randi([1 p-1]);%Calculate value of Xa
xb = randi([1 p-1]);%Calculate value of Xb

disp(['Nilai (Xa) adalah: ' num2str(xa)]);%Convert xa to string and display it
disp(['Nilai (Xb) adalah: ' num2str(xb)]);%Convert xb to string and display it

disp('---Nilai Y---');
%Calculate value of Ya and Yb
ya = power(g,xa);
ya = mod(ya,p);
yb = power(g,xb);
yb = mod(yb,p);

disp(['Nilai (Ya) adalah: ' num2str(ya)]);%Convert ya to string and display it
disp(['Nilai (Yb) adalah: ' num2str(yb)]);%Convert yb to string and display it

disp('---Nilai Shared Key---');
%Calculate shared key
ha = power(yb,xa);
ha = mod(ha,p);
hb = power(ya,xb);
hb = mod(hb,p);

disp(['Nilai (Shared Key A) adalah: ' num2str(ha)]);%Convert ha to string and display it
disp(['Nilai (Shared Key B) adalah: ' num2str(hb)]);%Convert bb to string and display it