class Officer 
    attr_accessor :name, :age, :gender, :address
    def initialize(name, age, gender, address)
        @name = name
        @age = age
        @gender = gender
        @address = address
    end
    def show()
        puts "Name: #{name}"
        puts "Age: #{age}"
        puts "Gender: #{gender}"
        puts "Address: #{address}"
        puts
    end
end

