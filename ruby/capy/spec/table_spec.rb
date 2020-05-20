describe 'Testing tables', :table do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/tables'
    end
    it 'Chadwick Boseman Salary' do
        # get all rows
        find('table tbody tr')
        
        expect(page).to have_content '700.000'
    end
end