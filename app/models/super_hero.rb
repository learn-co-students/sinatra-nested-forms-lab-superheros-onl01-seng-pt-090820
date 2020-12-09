class Super_hero
    attr_reader :name, :power, :biography

    @@all = []

    def initialize(hero)
        @name = hero[:name]
        @power = hero[:power]
        @biography = hero[:biography]
        @@all << self
    end

    def self.all
        @@all
    end
end 