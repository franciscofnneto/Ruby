
require_relative '../app/bank'

#Para executar: rspec spec\saque_spec.rb -fd

describe ContaCorrente do
    
    describe 'Saque'do
        context 'Quando o valor é positivo'do
            before(:all)do
                @conta = ContaCorrente.new(1000.00) #Criar a conta corrente
                @conta.saca(200.00) #Saca 200 reais
            end

            it 'entao atualiza saldo' do
                expect(@conta.saldo).to eql 800.00 #Conparando o valor do saldo
            end
        end
    
        context 'Quando o saldo é insuficiente'do
            before(:all)do
                @conta = ContaCorrente.new(0.0)
                @conta.saca(100.00)
            end

            it 'Então exibe mensagem'do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'E o Saldo final com Zero'do
                expect(@conta.saldo).to eql 0.00
            end
        end

        context 'Quando o saldo é Zero'do
            before(:all)do
                @conta = ContaCorrente.new(0.0)
                @conta.saca(100.00)
            end

            it 'Vejo mensagem'do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'Meu Saldo permanece com Zero'do
                expect(@conta.saldo).to eql 0.00
            end
        end

        context 'Quando o saldo é insuficiente'do
            before(:all)do
                @conta = ContaCorrente.new(500.0)
                @conta.saca(501.00)
            end

            it 'Então exibe a mensagem'do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'e o saldo permanece'do
                expect(@conta.saldo).to eql 500.00
            end
        end

        context 'Quando supera o limite do saque'do
            before(:all)do
                @conta = ContaCorrente.new(1000.0)
                @conta.saca(701.00)
            end

            it 'Então exibe a mensagem'do
                expect(@conta.mensagem).to eql 'Limite máximo por saque é de R$ 700'
            end

            it 'E o saldo permanece'do
                expect(@conta.saldo).to eql 1000.00
            end
        end

    end

end