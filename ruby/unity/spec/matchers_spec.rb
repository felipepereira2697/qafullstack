describe 'Matchers' do
    it 'Are the numbers the same?' do
        n1 = 1
        n2 = 1
        
        # returns TRUE --> expect(n1).to eql(n2)
        expect(n1).to equal(n2)
        expect(n1).to be(n2)
        expect(n1).to eq(n2)
    end
end