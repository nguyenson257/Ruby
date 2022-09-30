class Engineer<Officer
    attr_accessor :level
    def initialize(name, age, gender, address, level)
        super(name, age, gender, address)
        @level = level
    end 
end