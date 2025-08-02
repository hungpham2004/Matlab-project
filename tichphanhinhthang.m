function y = tichphanhinhthang(fx, a, b, N)
% Hàm tính gần đúng tích phân của f(x) trong khoảng [a, b] bằng công thức hình thang
% Đầu vào:
% fx: Hàm số f(x) dưới dạng handle (@)
% a, b: Cận tích phân
% N: Số đoạn con
% Đầu ra:
% y: Giá trị gần đúng của tích phân
h = (b-a)/N; % Độ dài mỗi đoạn con
sum = 0; % Biến lưu tổng các giá trị f(x) tại các điểm

% Vòng lặp để tính tổng giá trị tại các điểm theo công thức sigma
for i = 1:N-1
xi = a + i * h; % Tính x tại điểm chia thứ i
sum = sum + fx(xi); % Cộng giá trị f(x) tại điểm đó
end

% Áp dụng công thức hình thang
y = h/2*(fx(a) + fx(b) + 2 * sum);
end