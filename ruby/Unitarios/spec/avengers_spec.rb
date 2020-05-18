
class AvengersHeadQuarter

    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

#TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do

    it 'Deve adicionar um vingador'do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']

    end

    it 'Deve adicionar uma Lista de Vingadores'do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        expect(hq.list).to include 'Hulk' #Include verifica que o objeto existe na lista
    end

    it 'Thor deve ser o primeiro da Lista'do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        expect(hq.list).to start_with 'Thor' #start_with verifica se Thor é o primeiro da lista
    end

    it 'Iron Man deve ser o último da Lista'do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Iron Man')
        expect(hq.list).to end_with 'Iron Man' #end_with verifica se Iron Man é o último da lista
    end

    it 'Deve conter o sobrenome'do
        avenger = 'Peter Parker'
        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Chico/)
        #Verifica se o objeto bate ou não com o listado no expect
    end

    it 'Teste string qa ninja'do
        string = "qa ninja"
        expect(string).to match(/qa/)
        expect(string).to match(/inja/)
        expect(string).not_to match(/ka/)
        expect(string).not_to match(/qaninja/)
    end

    it 'Teste string qa ninja 002'do
        string = "qa ninja"
        expect(string).to include("q")
        expect(string).to include("qa")
        expect(string).to include("qa", "ninja")
        expect(string).not_to include("ka")
        expect(string).not_to include("ninjas")
    end

    it 'Teste string qa ninja 003'do
        string = "qa ninja"
        expect(string).to start_with("qa")
        expect(string).not_to start_with("ninja")
        expect(string).to end_with("ninja")
        expect(string).not_to end_with("qa")
    end

end