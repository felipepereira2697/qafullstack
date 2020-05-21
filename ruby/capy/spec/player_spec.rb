#test suite block
describe 'Automated Script' do
    
    #test case block
    it 'Go to webpage' do
        #Visit is capybara method
        visit "/"
        #page title is from capybara but expect is from rspec
        puts expect(page.title).to eql 'Training Wheels Protocol'
    end

end
