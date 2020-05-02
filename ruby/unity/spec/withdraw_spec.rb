class RegularAccount
    attr_accessor :amount

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
       context 'When the value is insufficient' do
        before(:all) do
            @acc2 = RegularAccount.new(0.00)
            @acc2.withdraw(100.0)
        end
        it 'notify user of insufficient value' do
            expect(@acc2.amount).to eql(0.0)
        end
       end

       context 'when the value is bigger than allowed per transaction' do
        before(:all) do
            @acc3 = RegularAccount.new(700.0)
            @acc3.withdraw(500.0)
        end
        it 'notify user that can only take 200 per transaction' do
            expect(@acc3.amount).to eql(700.0)
        end
       end
    end

end