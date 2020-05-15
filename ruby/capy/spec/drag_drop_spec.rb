describe 'Testing drag and drop', :dragdrop do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end
    it 'Spiderman Stark team' do
        #Acessing Stark div by class and element using css hierarchy
        stark = find('.team-stark .column')

        spider = find('img[alt$=Aranha]')
        spider.drag_to stark

        expect(stark).to have_css 'img[alt$=Aranha]'
    end
end