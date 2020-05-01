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
    end

end
