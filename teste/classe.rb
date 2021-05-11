class ContaBancaria
    def initialize(saldo, saque)
        @saldo = saldo
        @saque = saque
    end

    def sacar
        if @saldo >= @saque
            @saldo - @saque
            puts "#{@saldo}"
        else
            puts "voce não pode sacar esse valor"
        end
    end
end