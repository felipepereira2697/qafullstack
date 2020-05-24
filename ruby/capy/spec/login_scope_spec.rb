describe 'Scope login', :scope_login do

    before(:each) do
        visit '/access'
    end
    it 'Successful login' do
        # Since we have two elements with input username and password we need to differ, one way to do it
        #is using the parent, so in this case we`re gona use #login element as our parent
        #so inside parent we can look for the element we want, this is a scope technique
        #now the search is only on login structure and not on the whole page.
        

        #One way to work with scope
        #login_form = find('#login')
        # login_form.find('input[name=username').set 'stark'
        # login_form.find('input[name=password').set 'jarvis!'

        #Using Capybara within method
        within('#login') do
            find('input[name=username').set 'stark'
            find('input[name=password').set 'jarvis!'
            click_button 'Entrar'
        end
        sleep 3
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'Sign up' do
        within('#signup') do
            find('input[name=username').set 'arya'
            find('input[name=password').set '123!'
            click_link 'Criar Conta'
        end
        sleep 3
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro'
    end 

end
