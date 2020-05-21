describe 'Testing Hovers', :hover do
    
    before(:each) do
        visit '/hovers'
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

    it 'Should test html hover for image elements that starts with Homem' do
        #Since contain white spaces (special characters) the parameters must be in double quotes
        card = find('img[alt*=Homem]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    it 'Should test html hover for image elements that ends with Aranha' do
        #Since contain white spaces (special characters) the parameters must be in double quotes
        card = find('img[alt$=Aranha]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end
end