require './Officer'
class ManagerOfficer
    @@officers = Array.new
    def addOfficer(officer)
        @@officers.push(officer)
    end
    
    def searchOfficerByName(key)
        searchList = @@officers.select {|o| o.name.include? key}
        searchList.each{ |sl| sl.show}
    end

    def showListInforOfficer()
        @@officers.each{ |officer| officer.show}
    end
end

o1 = Officer.new("son1", 34,"nam", 'danang')
o2 = Officer.new("son2", 34,"nam", 'danang')
o3 = Officer.new("son3", 34,"nam", 'danang')
o4 = Officer.new("son4", 34,"nam", 'danang')
o5 = Officer.new("son5", 34,"nam", 'danang')
o6 = Officer.new("son6", 34,"nam", 'danang')

list = ManagerOfficer.new()
list.addOfficer(o1)
list.addOfficer(o2)
list.addOfficer(o3)
list.addOfficer(o4)
list.addOfficer(o5)
list.addOfficer(o6)

# list.showListInforOfficer()
list.searchOfficerByName("son1")