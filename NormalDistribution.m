%Question 2
%Normal distribution

clc;
clear all
digits (4)

% miu = 3;
% sigma = 1/3;
% sect = 3;
% sect2 = 2.5;
% 
% syms P(x)
% P(x) = exp(-(x-miu).^2/(2*sigma^2))/(sigma*sqrt (2*pi));
% 
% alpha = double (vpaintegral (P, x, [sect2, sect]));
% 
% beta= double (vpa (P(miu)));
% delta1 = double (vpa (P(sect)));
% delta2 = double (vpa (P(sect2)));
% deltas1 = double (vpa (P(miu-sigma)));
% deltas2 = double (vpa (P(miu+sigma)));
% deltas3 = double (vpa (P(miu+2*sigma)));
% deltas4 = double (vpa (P(miu-2*sigma)));
% 
% hold on
% %xlim auto
% %ylim auto
% 
% fplot (P, 'm');
% line ([miu, miu], [0, beta], 'Color', 'cyan');
% line ([-1.5+miu, 1.5+miu],[0, 0]);
% line ([sect, sect], [0, delta1], 'Color', 'black');
% line ([sect2, sect2], [0, delta2], 'Color', 'black');
% line ([miu - sigma, miu - sigma], [0, deltas1], 'Color', 'blue');
% line ([miu + sigma, miu + sigma], [0, deltas2], 'Color', 'blue');
% line ([miu - 2*sigma, miu - 2*sigma], [0, deltas3], 'Color', 'blue');
% line ([miu + 2*sigma, miu + 2*sigma], [0, deltas4], 'Color', 'blue');
% xlabel ('years');
% hold off
% 
% %Answer i:
% z1m = (sect2 - miu) / sigma;
% Answeri = double (alpha) + 0.5;
% 
% %Answer ii:
% Answerii = double (vpaintegral (P, x, [2, 3]));
% 
% %Answer iii:
% Answeriii = 100 - double (P(3));
% 
% %Answer b)
% Answerb = 0.67 * sigma + miu;
% 
% %Answer c)
% Answerc = 1.64 * sigma + miu;

%Question 3
%Linear Regression
w = [1975, 1215, 1008, 1323, 710, 1350, 1436, 1561, 2120, 2100];
c = [12.7, 30.1, 33.0, 21.3, 41.6, 25.0, 21.1, 22.6, 13.3, 13.6];
w= w + 9;
digits (4);  %sets dp to 4
p = polyfit (w,c,1);   
x = linspace (500,2500,200);
y = polyval (p, x);
plot(x,y,w,c,'o')
title(num2str(clock))
