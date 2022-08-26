# Viết lệnh hiển thị "Xin chào" + tên SV + MSV
puts "Xin chào: Nguyễn Hồng Sơn - 1911505310146"
puts

# Nhập 1 số từ bàn phím, in ra số đó
print "Nhập 1 số bất kỳ: "
num = gets
puts "Số bạn vừa nhập là: #{num}"
puts

# So sánh 2 giá trị nhập vào từ bàn phím, in ra giá trị lớn hơn
puts "Tính tổng 2 số"
print "Nhập số thứ nhất: n1 = "
num_1 = gets.chomp
print "Nhập số thứ nhất: n2 = "
num_2 = gets.chomp
if num_1.to_i > num_2.to_i
    puts "Trong 2 số bạn nhập thì số #{num_1} là số lớn hơn"
elsif num_1.to_i < num_2.to_i
    puts "Trong 2 số bạn nhập thì số #{num_2} là số lớn hơn"
else
    puts "2 số bạn vừa nhập có giá trị bằng nhau"
end