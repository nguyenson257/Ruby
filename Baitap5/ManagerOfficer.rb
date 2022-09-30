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