describe 'Testing radio buttons', :radio do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'Selecting radio button by id' do
        choose('cap')
    end
    #if we do not have an id
    it 'Selecting using find method' do
        find('input[value=guardians]').click
    end
    after(:each) do
        sleep 2
    end
end