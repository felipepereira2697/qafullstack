class Account

    attr_accessor :amount, :name
    #Constructor
    def initialize(name)
        self.amount = 0.0
        self.name = name;
    end

    def deposit(value)
        #we can invoke methods or attributes of my class using self
        self.amount += value
        puts "Hi #{self.name} now you have #{self.amount} "
    end

end

acc = Account.new('Pereira')
acc.deposit(1200.0)
acc.deposit(100.0)

puts acc.name
puts acc.amount
