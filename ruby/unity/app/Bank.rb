class Account
    attr_accessor :amount, :errorMessage
    def initialize(value)
        self.amount = value
    end

    def withdraw(value, max, fee)
        if value > self.amount
            puts('Ooops insufficient value :( ')
        elsif value > max
            puts("You can only take #{max} per transaction")
        else
            self.amount -= value + fee      
        end
    end

end
class RegularAccount < Account
    def withdraw(value, max=200, fee=10)
        super
    end
end

class SavingAccount < Account
    def withdraw(value, max=500, fee=20)
        #Look at parent class and see if we have a withdraw method, if so call that method with the parameters
        #defined here
        super
    end
end