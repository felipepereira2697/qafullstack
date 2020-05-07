describe 'Testing Forms' do
    it 'successful login' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        #Look for an element with name or id username and fill it with stark
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        #find element that contains flash id and also checks to see if its visible
        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        #Better way to do it --> this is from CAPYBARA not from RSpec
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

end
