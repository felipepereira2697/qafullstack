describe 'Login Random Forms', :random_login do

    before(:each) do
        visit '/login2'
    end
    it 'successful birth date login' do
        

        #Look for an element with name or id username and fill it with stark
        find('#userId').set 'stark'
        find('#passId').set 'jarvis!'

        #search form and using Ruby case to work in parallel with Capybara
        login_form = find('#login')
        #login_form.text amazing way these return all text related to that form
        case login_form.text
        when /Dia/
            find('#day').set '29'
        when /Mês/
            find('#month').set '05'
        when /Ano/
            find('year').set '1970'
        end

        sleep 5
        # click_button 'Login'

       

        #Better way to do it --> this is from CAPYBARA not from RSpec
        # expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    

end
