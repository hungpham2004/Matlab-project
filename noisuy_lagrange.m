function [l, L] = noisuy_lagrange(xa, ya)
n = length(xa) - 1; %bac cua da thuc
l = 0;
for m = 1:n + 1
 p = 1;
for k = 1:n + 1
 if k ~= m
 p = conv(p,[1-xa(k)])/(xa(m)-xa(k)); 
 %conv: Hàm cộng và nhân đa thức 
 end
 end
 L(m,:) = p; %da thuc Lagrange
l = l + ya(m)*p; % he so cua P
end