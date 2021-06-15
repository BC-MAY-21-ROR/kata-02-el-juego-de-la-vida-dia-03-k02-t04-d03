class Kata
    def initialize(largo,ancho)
        @largo = largo
        @ancho = ancho
    end
    def llenado
        $matriz = Array.new(@largo) {Array.new(@ancho){[' * ', ' ° '].sample}}
    end

    def mostrar
        @largo.times do |x|
            @ancho.times do |y|
                print $matriz[x][y]
            end
            puts
        end
    end

    def generacion
        $celulas = 0
        $numero = 0
        @largo.times do |x|
            @ancho.times do |y|
                if $matriz[x - 1][y].blank?
                    $numero += 1
                end
                if $matriz[x - 1][y - 1].blank?
                    $numero += 1
                end
                if $matriz[x - 1][y + 1].blank?
                    $numero += 1
                end
                if $matriz[x][y - 1].blank?
                    $numero += 1
                end
                if $matriz[x][y + 1].blank??
                    $numero += 1
                end
                if $matriz[x + 1][y - 1].blank?
                    $numero += 1
                end
                if $matriz[x + 1][y].blank?
                    $numero += 1
    end
    if $matriz[x + 1][y + 1].blank?
        $numero += 1
    end
                $celulas=0
            end
        end
        puts $numero
    end
end

prueba = Kata.new(2,2)
prueba.llenado
prueba.mostrar
prueba.generacion
