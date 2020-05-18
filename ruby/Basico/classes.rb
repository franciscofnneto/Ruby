# Ruby é uma linguagem puramente orientado a objeto
# porque no Ruby tudo são objetos

# Classe possui atributos e métidos
# Características e ações

# Carro{Nome, marca, modelo, cor, qtd portas, etc ...}
# Ações: Ligar, bizinar, parar, etc ...

class Carro
    attr_accessor :nome

    def Ligar
        puts 'O carro está pronto para iniciar o trajeto.'
    end
end

civic = Carro.new
civic.nome = 'Civic'

puts civic.nome
civic.Ligar