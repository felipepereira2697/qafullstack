
describe 'JS Alerts', :alerts do
    
    before(:each) do
        visit '/javascript_alerts'
    end
    it 'testing alerts' do
        click_button 'Alerta'
        #Capybara and Selenium has a property to identify elements
        alert = page.driver.browser.switch_to.alert.text
        sleep 3
        expect(alert).to eql 'Isto é uma mensagem de alerta'
    end

    it 'confirm' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        sleep 2
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.accept

        expect(page).to have_content 'Mensagem confirmada'
        sleep 3
    end

    it 'cancel' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        sleep 2
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.dismiss

        expect(page).to have_content 'Mensagem não confirmada'
        sleep 3
        
    end

    it 'prompt', :accept_prompt do
         
        #Capybara method
        accept_prompt(with: 'Felipe') do
            click_button 'Prompt'
            sleep 2
        end

        expect(page).to have_content 'Olá, Felipe'
        sleep 2
    end

    it 'dismiss prompt', :dismiss_prompt do
        dismiss_prompt(with: 'Felipe') do
            click_button 'Prompt'
            sleep 2
        end

        expect(page).to have_content 'Olá, null'
        sleep 2
    end
end