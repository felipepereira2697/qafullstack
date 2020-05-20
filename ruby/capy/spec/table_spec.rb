describe 'Testing tables', :table do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/tables'
    end
    it 'Chadwick Boseman Salary' do
        # get all rows but find should return ONLY ONE ELEMENT
        #find('table tbody tr')
        actors = all('table tbody tr')

        #RUBY CODE
        blackPanther = actors.detect{
            |item| item.text.include?('Chadwick Boseman')
        }
        puts blackPanther.text
        
        expect(blackPanther.text).to include '700.000'
    end
end