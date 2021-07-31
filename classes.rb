class Pessoa
    def initialize(cont = 5)
        cont.times do |i|
            puts "passou por aqui... #{i}"
        end
    end
    def falar(texto = "sem nome")
         "olá  #{texto}"
    end
end

p= Pessoa.new(2)
puts p.falar("Arthur")
p2 = Pessoa.new
puts p2.falar