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
end