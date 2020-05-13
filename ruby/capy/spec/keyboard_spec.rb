describe 'Keyboard testing', :keyboard do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
    end
    it 'Space Key simulator' do
        find('#campo-id').send_keys :space
        expect(page).to have_content 'You entered: SPACE'
        sleep 3
    end

    it 'Array of keys simulator' do
        keys = %i[tab escape space enter shift control alt]
        keys.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 3
        end
    end

    it 'sending string' do
        #string array
        keys = %w[a b f r]
        keys.each do |s|
            find('#campo-id').send_keys s
            expect(page).to have_content 'You entered: '+s.to_s.upcase
            sleep 3
        end
    end
end