describe 'Matchers' do
    it 'Are the numbers the same?' do
        n1 = 1
        n2 = 1
        
        # returns TRUE --> expect(n1).to eql(n2)
        expect(n1).to equal(n2)
        expect(n1).to be(n2)
        expect(n1).to eq(n2)
    end

    it 'Array matchers' do
        array = [1, 2, 3, 4, 5, 14]
        #TRUE FOR BOTH
        expect(array).to match_array([1, 2, 3, 4, 5, 14])
        expect(array).to match_array([14, 5, 4, 3, 2, 1])
        expect(array).to include(14)
        expect(array).to_not match_array([1, 2, 8, 7, 5, 14])
    end


end