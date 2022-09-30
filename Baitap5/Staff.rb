class Staff<Officer
    attr_accessor :task
    def initialize(name, age, gender, address, task)
        super(name, age, gender, address)
        @task = task
    end 
end