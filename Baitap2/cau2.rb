# 2.Nhập 3 cạnh tam giác, kiểm tra điều kiện có phải 3 cạnh tam giác hay ko? nếu đúng --> tính chu vi, diên tích --> in ra

puts "Nhập 3 cạnh của tam giác: "
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
if (a + b > c) && (a + c > b) && (b + c > a)
    puts "Đây là 3 cạnh của tam giác"
    puts "Chu vi tam giác: #{a + b + c}"
    p = (a + b + c) / 2 
    puts "Diện tích tam giác: #{Math.sqrt(p*(p-a)*(p-b)*(p-c))}"
else
    puts "Đây không phải là 3 cạnh của tam giác"
end