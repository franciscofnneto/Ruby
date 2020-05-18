

class Conta
    #attr_accessor é o atributo
    attr_accessor :saldo

    def deposita (valor)
        # Self consege invocar o métido dentro da classe

        #puts valor.class
        self.saldo += valor

        #puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
        puts "Depositando a quantia de #{valor} reais."

    end

end

c = Conta.new

c.saldo = 0
c.deposita(100.00)
puts c.saldo