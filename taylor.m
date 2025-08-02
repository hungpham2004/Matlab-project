function result = taylor(xa,ya,x)
%hàm tính đạo hàm gần đúng theo taylor
% xa: Mảng các giá trị x
% ya: Mảng các giá trị y
% x: Giá trị cần tính đạo hàm
% Đầu ra:
% result: Giá trị đạo hàm tại x
h=xa(2)-xa(1); %h là giá trị khoảng cách giữa hai điểm liền kề nhau
for i = 1:length(xa) % Duyệt qua tất cả các phần tử của mảng xa
if xa(i) == x % Nếu tìm thấy giá trị x trong mảng xa
result=(ya(i+1)-ya(i))/h; % Áp dụng công thức Taylor để tính đạo hàm
end
end
fprintf("Đạo hàm gần đúng tại x= %f theo taylor là: %f \n",x,result) % In kết quả đạo hàm gần đúng
end