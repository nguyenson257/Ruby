# Tạo class sinhvien
# Thiết kế các phương thức cơ bản của class
# Tạo phương thức nhập điểm Toán Lý Hoá của sinh viên, tính điểm trung bình
# In ra các thông tin của sinh viên
class SinhVien
    
    attr_accessor :MSV, :ten, :diemToan, :diemLy, :diemHoa
    def initialize(msv, name)
        @MSV = msv
        @ten = name
    end 
   
    def inThongTin
        puts "Tên của sinh viên: #{@ten}"
        puts 'Điểm trung bình là %.2f' % [(@diemToan.to_f+@diemLy.to_f+@diemHoa.to_f)/3]
    end
   
    def nhapDiem
        print "Nhập điểm Toán: "
        @diemToan = gets
        print "Nhập điểm Lý: "
        @diemLy = gets
        print "Nhập điểm Hoá: "
        @diemHoa = gets
    end
end
   
n = SinhVien.new("1911505310146","Nguyen Hong Son")
n.nhapDiem
n.inThongTin

  