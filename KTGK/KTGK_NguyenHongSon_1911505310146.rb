class Vehicle
    attr_accessor :id, :hang, :namsx, :dongxe, :giaban, :bienso, :mauxe
    def initialize(id, hang, namsx, dongxe, giaban, bienso, mauxe)
        @id = id
        @hang = hang
        @namsx = namsx
        @dongxe = dongxe
        @giaban = giaban
        @bienso = bienso
        @mauxe = mauxe
    end
    def show()
        puts "Id: #{id}"
        puts "Hang: #{hang}"
        puts "Nam san xuat: #{namsx}"
        puts "Dong xe: #{dongxe}"
        puts "Gia ban: #{giaban}"
        puts "Bien so: #{bienso}"
        puts "Mau xe: #{mauxe}"
    end
end

class Car<Vehicle
    attr_accessor :chongoi, :dongco, :nhienlieu, :tuikhi, :ngaydangkiem
    def initialize(id, hang, namsx, dongxe, giaban, bienso, mauxe, chongoi, dongco, nhienlieu, tuikhi, ngaydangkiem)
        super(id, hang, namsx, dongxe, giaban, bienso, mauxe)
        @chongoi = chongoi
        @dongco = dongco
        @nhienlieu = nhienlieu
        @tuikhi = tuikhi
        @ngaydangkiem = ngaydangkiem
    end 
    def show()
        super
        puts "So cho ngoi: #{chongoi}"
        puts "Dong co: #{dongco}"
        puts "Nhien lieu: #{nhienlieu}"
        puts "Tui khi: #{tuikhi}"
        puts "Ngay dang kiem: #{ngaydangkiem}"
        puts
    end
end

class Motorcycle<Vehicle
    attr_accessor :congsuat, :dungtich
    def initialize(id, hang, namsx, dongxe, giaban, bienso, mauxe, congsuat, dungtich)
        super(id, hang, namsx, dongxe, giaban, bienso, mauxe)
        @congsuat = congsuat
        @dungtich = dungtich
    end 
    def show()
        super
        puts "Cong suat: #{congsuat}"
        puts "Dung tich: #{dungtich}"
        puts
    end
end

class Truck<Vehicle
    attr_accessor :trongtai
    def initialize(id, hang, namsx, dongxe, giaban, bienso, mauxe, trongtai)
        super(id, hang, namsx, dongxe, giaban, bienso, mauxe)
        @trongtai = trongtai
    end 
    def show()
        super
        puts "Trong tai: #{trongtai}"
        puts
    end
end

class ManagerVehicle
    @@vehicles = Array.new
    def addVehicle(vehicle)
        @@vehicles.push(vehicle)
    end

    def deleteVehicle(id)
        @@vehicles.delete_if {|x| x.id == id }
    end
    
    def showInfor()
        @@vehicles.each{ |vehicle| vehicle.show}
    end

    def searchByBranch(branch)
        @@vehicles.each{ |vehicle| 
            if vehicle.hang == branch
                vehicle.show
            end
        }
    end
    
    def searchByColor(color)
        @@vehicles.each{ |vehicle| 
            if vehicle.mauxe == color
                vehicle.show
            end
        }
    end

    def searchByPlate(plate)
        @@vehicles.each{ |vehicle| 
            if vehicle.bienso == plate
                vehicle.show
            end
        }
    end
end

managerVehicle_46 =  ManagerVehicle.new

car1_46 = Car.new(1,"toyota",2022,"suv",600,"77483","xanh duong","4","v6","xang",8,"22/8/2022")
car2_46 = Car.new(2,"kia",2022,"suv",500,"33423","do","5","v6","xang",10,"19/4/2022")
motorcycle1_46 = Motorcycle.new(3,"honda",2022,"2 cho",56,"65763","trang",50,150)
motorcycle2_46 = Motorcycle.new(4,"yamaha",2022,"2 cho",40,"34212","den",50,150)
truck1_46 = Truck.new(5,"volvo",2022,"tai",1200,"88492","trang",20)
truck2_46 = Truck.new(6,"volvo",2022,"tai",1500,"99958","trang",30)

managerVehicle_46.addVehicle(car1_46)
managerVehicle_46.addVehicle(car2_46)
managerVehicle_46.addVehicle(motorcycle1_46)
managerVehicle_46.addVehicle(motorcycle2_46)
managerVehicle_46.addVehicle(truck1_46)
managerVehicle_46.addVehicle(truck2_46)

managerVehicle_46.searchByBranch("volvo")
managerVehicle_46.searchByColor("xanh")
managerVehicle_46.searchByPlate("77483")