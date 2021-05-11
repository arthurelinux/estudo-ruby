#execute com ruby no seu sistema Linux "ruby start-in-linux.rb" 
class  SistemaOne
    def initialize(comando)
        @comando = comando
    end

    def executar()
        comandos = Integer(@comando)
        if(comandos == 1)
            system("sudo apt update")
           
            
        elsif (comandos == 2)
            system("sudo service docker start && code ../boomerpay-web-rails
                && sudo docker-compose up")
        elsif (comandos == 3)
            system("sudo apt remove")
        elsif (comandos == 4)
            system("sudo su")
        end 
             
    end
    
end


def execucao
    puts "Digite: 1 - Atualizar SO, 2 - Rodar o Docker, 3 - abrir o VSCode, 4 - Entrar em Root"
    valor = gets.chomp

    executar = SistemaOne.new(valor)
    executar.executar()
end 

sin=0
while sin < 2 do
    
    execucao()
    
    puts "Deseja encerra esse programa? 1 - Não, 2 - Sim"
    b = gets.chomp
    sin = Integer(b)
end

