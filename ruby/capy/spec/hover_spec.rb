describe 'Testing Hovers', :hover do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end
    it 'Should test html hover for Blade' do
        card = find('img[alt=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'Should test html hover for Spiderman' do
        #Since contain white spaces (special characters) the parameters must be in double quotes
        card = find('img[alt="Homem Aranha"]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end
end