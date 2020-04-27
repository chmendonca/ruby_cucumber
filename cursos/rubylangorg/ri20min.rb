class MegaAnfitriao
    attr_accessor :nomes
    
    #Criar o objeto
    def initialize(nomes = "Mundo")
        @nomes = nomes
    end

    #Dizer ola a todos
    def diz_ola
        if @nomes.nil?
            puts "..."
        elsif @nomes.respond_to?("each")
            # @nomes é uma lista de algum tipo,
            # assim podemos iterar
            @nomes.each do |nome|
                puts "Ola (each-elsif) #{nome}!"
            end
        else
            puts "Ola (each-else) #{@nomes}!"
        end
    end

    #Dizer adeus a todos
    def diz_adeus
        if @nomes.nil?
            puts "---"
        elsif @nomes.respond_to?("join")
            #juntar os elementos a lista
            # usando a virgula como separador
            puts "Adeus (join-elsif) #{@nomes.join(", ")}. Voltem sempre"
        else
            puts "Adeus (join-else) #{@nomes}. Voltem sempre!"
        end
    end
end    
    
    if __FILE__ ==$0
        mg = MegaAnfitriao.new
        mg.diz_ola
        mg.diz_adeus
        
        #Alterar o nome para Cassio
        mg.nomes = "Cassio"
        mg.diz_ola
        mg.diz_adeus
        
        #Alterar o nome para um vetor de nomes
        mg.nomes = ["Alberto",9,"Cassio","David","Ernesto"]
        mg.diz_ola
        mg.diz_adeus
        
        #Alterar para nil
        mg.nomes = nil
        mg.diz_ola
        mg.diz_adeus
    end
    
        