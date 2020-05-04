#including our class
require_relative '../../app/Bank.rb'
#TEST SUITE
describe SavingAccount do
    
    describe 'Withdraw' do
       context 'When the value is positive' do
        before(:all) do
            #savingAcc must be an instance variable so we can use it on our test scenarios so we add @ 
            @savingAcc = SavingAccount.new(1000.00)
            @savingAcc.withdraw(200.00)
        end
        it 'update amount' do
            expect(@savingAcc.amount).to eql(780.00)
        end
       end
       context 'When the value is insufficient' do
        before(:all) do
            @savingAcc2 = SavingAccount.new(0.00)
            @savingAcc2.withdraw(100.0)
        end
        it 'notify user of insufficient value' do
            expect(@savingAcc2.amount).to eql(0.0)

        end
       end

       context 'when the value is bigger than allowed per transaction' do
        before(:all) do
            @savingAcc3 = SavingAccount.new(1700.0)
            @savingAcc3.withdraw(900.0)
        end
        it 'notify user that can only take 200 per transaction' do
            expect(@savingAcc3.amount).to eql(1700.0)
        end
       end
    end

end