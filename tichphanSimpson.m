function y = tichphanSimpson(fx, a, b, N)
% Hàm tính gần đúng tích phân của f(x) trong khoảng [a, b] bằng công thức Simpson
% Đầu vào:
% fx: Hàm số f(x) dưới dạng handle (@)
% a, b: Cận tích phân
% N: Số đoạn con
% Đầu ra:
% y: Giá trị gần đúng của tích phân
h = (b-a)/N; % Độ dài mỗi đoạn con
sum = 0; % Tổng giá trị cho các điểm lẻ và chẵn ban đầu

% Vòng lặp theo công thức sigma cho trường hợp lẻ và chẵn
for i = 1:N-1
xi = a + i * h; % Tính x tại điểm chia thứ i
if mod(i,2) == 0
sum = sum + 2*fx(xi); % Cộng giá trị f(x) tại điểm đó
else
sum = sum + 4*fx(xi); % Cộng giá trị f(x) tại điểm đó
end
end

% Áp dụng công thức hình thang
y = h/3*(fx(a) + fx(b) + sum);
end