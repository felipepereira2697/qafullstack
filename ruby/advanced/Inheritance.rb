class Auto
    attr_accessor :name, :brand, :model
    def initialize(name, brand, model)
        self.name = name
        self.brand = brand
        self.model = model
    end

    def on
        puts "#{self.name} #{self.model} is on and ready to go! "
    end

    def off
        puts "#{self.name} #{self.model} is off "
    end
end

class Car < Auto
    attr_accessor :name, :brand, :model
    
    def drive
        puts "Nice, you are driving #{self.name} #{self.model} "
    end

end

class Airplane < Auto
    attr_accessor :name, :brand, :model
    
    def fly
        puts "Nice, you are flying #{self.name} #{self.model} "
    end

end



uno = Car.new('Uno','Fiat','Mille')
puts uno.name 
puts uno.on
puts uno.drive

onix = Car.new('Onix','Chevrolet','')
puts onix.name 
puts onix.on
puts onix.off
puts onix.drive


embr3 = Airplane.new('Embr33','BREMBR','XYT-31')
puts embr3.name 
puts embr3.on
puts embr3.off
puts embr3.fly