class Percentual
    attr_accessor :valor
    attr_accessor :por_cento
    def initialize(valor, por_cento)
        @valor = valor
        @por_cento = por_cento
    end

    def xporcento()
        inicial = Integer(@valor)
        final = Integer(@por_cento)
        calculo = inicial*final/100

        puts "O valor que #{@por_cento}% quivale a #{calculo}"

    end
end

puts "Qual sei valor total?"
valor1 = gets.chomp
puts "Qual porcentágem que deseja saber?"
valor2= gets.chomp

porcentagem = Percentual.new(valor1, valor2)
porcentagem.xporcento()