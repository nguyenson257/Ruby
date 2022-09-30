require './ManagerOfficer'
require './Officer'
require './Engineer'
require './Staff'
require './Worker'

managerOfficer = ManagerOfficer.new

while true
    puts "Application Manager Officer"
    puts "Enter 1: To insert officer"
    puts "Enter 2: To search officer by name: "
    puts "Enter 3: To show information officers"
    puts "Enter 4: To exit:"
    line = gets.chomp.to_i

    case line
    when 1
        puts "Enter a: to insert Enginner"
        puts "Enter b: to insert Worker"
        puts "Enter c: to insert Staff"
        type  = gets.chomp

        case type 
        when "a"
            puts "Enter name: "
            name = gets.chomp
            puts "Enter age:"
            age = gets.chomp.to_i
            puts "Enter gender: "
            gender = gets.chomp
            puts "Enter address: "
            address =gets.chomp
            puts "Enter branch: "
            branch = gets.chomp
            engineer = Engineer.new(name, age, gender, address, branch)
            managerOfficer.addOfficer(engineer)
            engineer.show()
        when "b"
            puts "Enter name: "
            name = gets.chomp
            puts "Enter age:"
            age = gets.chomp.to_i
            puts "Enter gender: "
            gender = gets.chomp
            puts "Enter address: "
            address =gets.chomp
            puts "Enter level: "
            level = gets.chomp.to_i
            worker = Worker.new(name, age, gender, address, level)
            managerOfficer.addOfficer(worker)
            worker.show()
        when "c"
            puts "Enter name: "
            name = gets.chomp
            puts "Enter age:"
            age = gets.chomp.to_i
            puts "Enter gender: "
            gender = gets.chomp
            puts "Enter address: "
            address =gets.chomp
            puts "Enter task: "
            task = gets.chomp
            staff = Staff.new(name, age, gender, address, task)
            managerOfficer.addOfficer(staff)
            staff.show()
        else
            puts "Invalid"
        end
    when 2
        puts "Enter name to search: "
        name  = gets.chomp
        managerOfficer.searchOfficerByName(name)
    when 3
        managerOfficer.showListInforOfficer
    when 4
        return
    else
        return
    end
end