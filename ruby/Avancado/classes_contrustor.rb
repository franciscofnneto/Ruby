

class Conta
    #attr_accessor é o atributo
    attr_accessor :saldo, :nome

    #Construtor de inicialização com valor 0 e com o nome do cliente
    def initialize(nome)
        self.saldo = 0.0
        self.nome = 'Francisco'
    end

    def deposita (valor)
        # Self consege invocar o métido dentro da classe

        #puts valor.class
        self.saldo += valor

        #puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
        puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}"

    end

end

c = Conta.new('Francisco')

c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome