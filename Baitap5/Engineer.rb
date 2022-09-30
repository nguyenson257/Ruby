class Engineer<Officer
    attr_accessor :branch
    def initialize(name, age, gender, address, branch)
        super(name, age, gender, address)
        @branch = branch
    end 
end