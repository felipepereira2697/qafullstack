class RegularAccount
    attr_accessor :amount, :errorMessage

    def initialize(value)
        self.amount = value
    end
    def withdraw(value)
        if value > self.amount
            puts('Ooops insufficient value :( ')
        elsif value > 200.0
            puts('You can only take 200.0 per transaction')
        else
            self.amount -= value      
        end
    end
end