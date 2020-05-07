#Tagging this test suite with dropdown value so when we want to execute only this specific suite
# we just run rspec --tag @dropdown
describe 'Dropdown', :dropdown do
    
    it 'testing dropdown element, selecting an element' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        # dropdown is the id of the element
        #WARNING: These option only works for elements that has ids
        select('Steve Rogers', from: 'dropdown')
        sleep 3

    end

    it 'using find to locate specific item' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        #Using CSS Selector instead
        dropdown = find('.avenger-list')
        #dropdown variable contains the dropdown, select element
        #go to the options of that dropdown and look for an option that has Bruce Banner as value
        #then, select that option
        dropdown.find('option', text: 'Bruce Banner').select_option
        sleep 3

    end

    it 'random option', :sample do
        
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        #Using CSS Selector instead
        dropdown = find('.avenger-list')

        #Bring all the values, returns an array
        #Ruby function Sample takes a random

        #Now you found N values, get a random value and select it
        dropdown.all('option').sample.select_option
        sleep 5
    end
end