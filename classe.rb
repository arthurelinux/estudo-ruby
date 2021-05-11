class Carro
    attr_accessor :marca
    attr_accessor :ano

    def initialize(marca, ano)
        @marca = marca
        @ano = ano
    end

    def imprimir_ola()
        puts "Marca do carro é #{@marca}"
        puts "Fabricado em #{@ano}"
        if(@ano == "" || @marca =="")
         puts "Anou ou marca não foram passados"
        end
    end
    
end

puts "Diga a marca do carro"
nome = gets.chomp
puts "Diga o ano do carro"
ano = gets.chomp

chevete = Carro.new(nome, ano)
chevete.imprimir_ola()
