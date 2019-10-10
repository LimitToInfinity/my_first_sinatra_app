class Cat

    attr_accessor :name, :breed

    @@all = []

    def initialize(name, breed)
        @name = name
        @breed = breed
        @@all << self
    end

    def self.all
        @@all
    end

    def say_name
        "My name is #{name}"
    end
end