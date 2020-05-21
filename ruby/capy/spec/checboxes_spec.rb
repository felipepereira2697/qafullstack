describe 'Checkboxes', :checkbox do
    
    #Check and Uncheck methods works for names and Ids
    before(:each) do

        visit '/checkboxes'

    end
    it 'Checking option' do
        check('thor')
    end

    it 'Uncheck option' do
        uncheck('antman')

    end

    it 'find set true' do
        find('input[value = cap]').set(true)
    end

    it 'uncheck with set false' do
        find('input[value = guardians]').set(false)
    end
    after(:each) do
        sleep 5
    end
end