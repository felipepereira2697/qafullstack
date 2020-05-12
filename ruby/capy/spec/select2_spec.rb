describe 'Testing Select 2', :select2 do
    
    describe('single', :single) do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'select by name' do
            find('.select2-selection--single').click
            sleep  2
            find('.select2-results__option', text: 'Kevin James').click
            sleep  5
        end

        it 'click on actor' do
            find('.select2-selection--single').click
            sleep  2
            find('.select2-search__field').set 'Chris Rock'
            sleep 1
            find('.select2-results__option', text: 'Chris Rock').click
            sleep 5

        end
    end


    describe('multiple') do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end
    end

    
end