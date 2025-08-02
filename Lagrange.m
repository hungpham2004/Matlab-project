function result = Lagrange(xa, ya, x)
%khởi tạo hàm lagrange
n = length(xa); %Lấy số lượng phần tử trong mảng xa
sum = 0; % Khởi tạo biến sum để lưu tổng các số hạng nội suy Lagrange.
for i = 1:n % Vòng lặp qua từng điểm i trong mảng xa.
product = ya(i); % Gán giá trị ya(i) cho product để bắt đầu số hạng Lagrange i.
for j = 1:n % Vòng lặp qua tất cả các điểm j trong mảng xa.
if i ~= j % Kiểm tra nếu i khác j thì chạy
product = product.*(x - xa(j))./(xa(i) - xa(j));
end
end
sum = sum + product;
end
result = sum;
end