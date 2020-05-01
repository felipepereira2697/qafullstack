#This whole class was created using TDD
class AvengersHeadQuarter
    attr_accessor :avengerList

    def initialize
        self.avengerList = []
    end
    def put(avenger)
        self.avengerList.push(avenger)
    end


end
describe AvengersHeadQuarter do

    #Scenario
    it 'Should add an Avenger' do
        hq = AvengersHeadQuarter.new
        avenger = 'Captain America'
        hq.put(avenger)
        #Expect avengertList to be equals to [avenger]
        expect(hq.avengerList).to eql [avenger]
        expect(hq.avengerList).to include avenger
    end

    it 'Should add an Avengers List' do

        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Spiderman')
        hq.put('Ironman')
        hq.put('Cap America')
        #Check if on avengerList ironman is included
        expect(hq.avengerList).to include 'Ironman'
        expect(hq.avengerList).to include 'Cap America'
        res = hq.avengerList.size > 0
        expect(hq.avengerList.size).to be > 1
        expect(res).to be true
    end

    it 'Cap America should be the first one' do
        hq = AvengersHeadQuarter.new
        hq.put('Cap America')
        hq.put('Thor')

        expect(hq.avengerList).to start_with('Cap America') 
    end

    it 'Spiderman should be the last one' do
        hq = AvengersHeadQuarter.new
        hq.put('Cap America')
        hq.put('Thor')
        hq.put('Ironman')
        hq.put('Dr Strange')
        hq.put('Spiderman')

        expect(hq.avengerList).to end_with('Spiderman')
    end

    it 'Should include last name' do
        avengerFullName = 'Steve Rogers'

        #RegEx
        expect(avengerFullName).to match(/Rogers/)
        expect(avengerFullName).to_not match(/Stark/)
         

    end
end
