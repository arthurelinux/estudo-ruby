class  SistemaOne
    def initialize(comando)
        @comando = comando
    end

    def executar()
        comandos = Integer(@comando)
        if(comandos == 1)
            system("sudo apt update")
           
            
        elsif (comandos == 2)
            system("sudo apt autoclean")
        elsif (comandos == 3)
            system("sudo apt remove")
        elsif (comandos == 4)
            system("sudo su")
        elsif (comandos == 5)
            system("ls -l /var/www/html")
        elsif (comandos == 6)
            system("gedit")
        
        end 
             
    end
    
end


def execucao
    puts "Digite: 1 - Atualizar, 2 - Limpar, 3 - Remover, 4 - Entrar em Root, 5 - Diretório do Apche"
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

