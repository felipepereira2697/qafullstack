describe 'Testing iframes' do
    
    describe 'Good iframe', :good_iframe do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/nice_iframe'
        end
        it 'Testing good iframe' do
            # We can work inside an iframe using capybara method within_frame
            within_frame('burgerId') do
                product = find('.menu-item-info-box', text: 'REFRIGERANTE')
                product.find('.add-to-cart').click
                expect(find('#cart')).to have_content 'R$ 4,50'
                sleep 2
            end
        end

    end

    describe 'Bad iframe', :bad_iframe do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/bad_iframe'
        end
        it 'Cart should be empty' do
            # Since the bad iframe does not have an id we must add an id in order to test it
            script = '$(".box-iframe").attr("id", "tempId")'
            #now we execute a javascript inside our code
            page.execute_script(script)

            within_frame('tempId') do
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
            end
            sleep 3
        end
    end
end