class Account

    attr_accessor :amount

    def deposit(value)
        #we can invoke methods or attributes of my class using self
        self.amount += value
        puts "Now you have #{self.amount} "
    end

end

acc = Account.new
acc.amount = 0.0
acc.deposit(1200.0)
acc.deposit(100.0)

puts acc.amount
