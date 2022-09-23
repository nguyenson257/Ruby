class Man 
    attr_accessor :name, :gender, :hairColor, :height, :weight, :phone
    def initialize(name, gender, hairColor, height, weight, phone)
        @name = name
        @gender = gender
        @hairColor = hairColor
        @height = height
        @weight  = weight
        @phone = phone
    end 
end

class SinhVien<Man
    attr_accessor :MSV, :namsinh, :diemToan, :diemLy, :diemHoa, :diemTB
    def initialize(name, gender, hairColor, height, weight, phone, msv, namsinh, diemToan, diemLy, diemHoa)
        super(name, gender, hairColor, height, weight, phone)
        @MSV = msv
        @namsinh = namsinh
        @diemToan = diemToan
        @diemLy = diemLy
        @diemHoa = diemHoa
        tinhDiemTrungBinh()
    end 
   
    def inThongTin
        puts "Mã sinh viên: #{@MSV}"
        puts "Tên của sinh viên: #{@name}"
        puts "Năm sinh: #{@namsinh}"
        puts "Điểm trung bình: #{@diemTB.round(2)}"
    end
    def inDiemTB
        puts "Mã sinh viên: #{@MSV}"
        puts "Điểm trung bình: #{@diemTB.round(2)}"
    end
    def tinhDiemTrungBinh
        @diemTB = (diemToan.to_f+diemLy.to_f+diemHoa.to_f)/3
    end

end
   
sinhVien1 = SinhVien.new("Nguyen Hong Son","Male","Black",179,70,"0987654342","1911505310146",2001,8,9,10)
sinhVien2 = SinhVien.new("Nguyen Nam","Male","Black",179,70,"0987654342","1911505310147",2001,8,4,8)
sinhVien3 = SinhVien.new("Nguyen Oanh","Female","Black",179,70,"0987654342","1911505310148",2001,7,6,9)
sinhVien4 = SinhVien.new("Nguyen An","Male","Black",179,70,"0987654342","1911505310149",2001,8,6,10)
a = [sinhVien1, sinhVien2, sinhVien3, sinhVien4]
puts "Điểm trung bình trước khi sắp xếp:"
a.each do |single|
    single.inDiemTB()
end

a = a.sort_by!{ |opj| opj.diemTB}.reverse
puts "\nĐiểm trung bình sau khi sắp xếp:"

a.each do |single|
    single.inDiemTB()
end
