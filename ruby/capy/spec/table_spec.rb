describe 'Testing tables', :table do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/tables'
    end

    it 'Get Chris Evans inside actor list' do
        expect(page).to have_content 'Chris Evans'
    end

    it 'Chadwick Boseman Salary' do
        expect(page).to have_content '700.000'
    end
end