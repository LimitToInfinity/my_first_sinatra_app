class Dog

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

end