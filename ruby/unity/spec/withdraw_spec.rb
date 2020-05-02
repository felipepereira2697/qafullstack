class RegularAccount
    attr_accessor :amount

    def initialize(value)
        self.amount = value
    end
    def withdraw(value)
        self.amount -= value
    end
end
#TEST SUITE
describe RegularAccount do
    
    describe 'Withdraw' do
       context 'When the value is positive' do
        before(:all) do
            #Acc must be an instance variable so we can use it on our test scenarios so we add @ 
            @acc = RegularAccount.new(1000.00)
            @acc.withdraw(200.00)
        end
        it 'update amount' do
            expect(@acc.amount).to eql(800.00)
        end
       end

    end

end