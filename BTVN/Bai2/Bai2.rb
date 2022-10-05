class Document 
    attr_accessor :id, :nxb, :number
    def initialize(id, nxb, number)
        @id = id
        @nxb = nxb
        @number = number
    end
    def show()
        puts "Id: #{id}"
        puts "Nha xuat ban: #{nxb}"
        puts "So ban phat hanh: #{number}"
    end
end

class Book<Document
    attr_accessor :author, :numerPage
    def initialize(id, nxb, number, author, numerPage)
        super(id, nxb, number)
        @author = author
        @numerPage = numerPage
    end 
    def show()
        super
        puts "Tac gia: #{author}"
        puts "So trang: #{numerPage}"
        puts
    end
end

class Journal<Document
    attr_accessor :issueNumber, :monthIssue
    def initialize(id, nxb, number, issueNumber, monthIssue)
        super(id, nxb, number)
        @issueNumber = issueNumber
        @monthIssue = monthIssue
    end 
    def show()
        super
        puts "So phat hanh: #{issueNumber}"
        puts "Thang phat hanh: #{monthIssue}"
        puts
    end
end

class Newspaper<Document
    attr_accessor :dayIssue
    def initialize(id, nxb, number, dayIssue)
        super(id, nxb, number)
        @dayIssue = dayIssue
    end 
    def show()
        super
        puts "Ngay phat hanh: #{dayIssue}"
        puts
    end
end

class ManagerDocument 
    @@documents = Array.new
    def addDocument(document)
        @@documents.push(document)
    end

    def deleteDocument(id)
        @@documents.delete_if {|x| x.id == id }
    end
    
    def showInfor()
        @@documents.each{ |document| document.show}
    end

    def searchByBook()
        @@documents.each{ |document| 
            if document.class.name == "Book"
                document.show
            end
        }
    end
    
    def searchByNewspaper()
        @@documents.each{ |document| 
            if document.class.name == "Newspaper"
                document.show
            end
        }
    end

    def searchByJournal()
        @@documents.each{ |document| 
            if document.class.name == "Journal"
                document.show
            end
        }
    end
end

managerDocument = ManagerDocument.new

d1 = Book.new(1,"Hong Son 1", 101,"Son1",182)
d3 = Newspaper.new(3,"Hong Son 3", 103, 26)
d5 = Journal.new(5,"Hong Son 5", 105, 15, 8)
d6 = Journal.new(6,"Hong Son 6", 106, 23, 9)

managerDocument.addDocument(d1)
managerDocument.addDocument(d3)
managerDocument.addDocument(d5)
managerDocument.addDocument(d6)

managerDocument.showInfor
managerDocument.deleteDocument(5)
managerDocument.showInfor
managerDocument.searchByBook
managerDocument.searchByJournal
managerDocument.searchByNewspaper
