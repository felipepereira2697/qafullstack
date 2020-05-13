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


    describe('multiple', :mult) do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end

        def selectActor(actor)
            find('.select2-selection--multiple').click
            sleep 2
            find('.select2-search__field').set actor
            find('.select2-results__option').click
            sleep 5
        end

        it 'select multiple actors' do
            actors = ['Chris Rock', 'Owen Wilson', 'Kevin James']
            actors.each do |a|
                selectActor(a)
            end
            sleep 5
        end
    end

    
end