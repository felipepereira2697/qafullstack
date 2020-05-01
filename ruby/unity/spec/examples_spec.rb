#At this spec folder is where we write our test scenarios
describe 'rspec suites' do

    it 'sum of two values' do
        sum = 10.0 + 4.0
        expect(sum).to eql 14.0
    end

end