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

    #Another way
    it 'Chris Evans Salary' do
        capAmerica = find('table tbody tr', text: '@teamcevans')
        expect(capAmerica.text).to include '7.000.000'
    end

    it 'Vin Diesel - Fast and Furious movie' do
        vinDiesel = find('table tbody tr', text: '@vindiesel')

        #returning all columns
        movie = vinDiesel.all('td')[2].text

        expect(movie).to eql 'Velozes e Furiosos'
    end

    it 'Removing Chris Pratt' do
        starLord = find('table tbody tr', text: 'Chris Pratt')
        starLord.find('a', text: 'delete').click
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
    end

end