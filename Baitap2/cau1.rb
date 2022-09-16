# 1.Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng.

print "Nhập số phần tử mảng: "
num = gets.chomp.to_i
arr = Array.new

for i in 1..num do
    print "Nhập phần tử thứ #{i}: "
    n = gets.chomp.to_i
    arr.push n
end

puts "\nSố lớn nhất trong mảng #{arr.max}"
puts "Số bé nhất trong mảng: #{arr.min}"
puts "Giá trị trung bình của mảng: #{arr.sum/arr.size.to_f}"

