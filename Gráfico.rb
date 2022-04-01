# Crear el archivo grafico.rb utilizando el método chart, que construya el siguiente gráfico
# en la consola, a partir de un arreglo con datos numéricos.

# 2.6.0 :001 > require_relative "grafico"
# => true
# 2.6.0 :002 > chart([5, 3, 2, 5, 10])
# |**********
# |******
# |****
# |**********
# |********************
# >--------------------
# 1 2 3 4 5 6 7 8 9 10

def chart (arr)
    #Se obtiene el largo del array
    n = arr.count

    #ciclos para recorres el array e imprimir * por el valor dentro del array
    n.times do |i|
        print "|"
        arr[i].times do |j|
            print "**"
        end
        print "\n"
    end

    #Se obtiene el maximo del array
    maximo = arr.max

    #Se imprimen las ultimas lineas
    print ">"
    maximo.times do |m|
        print "--"
    end
    print "\n"

    #Se imprimen los números de la base
    maximo.times do |c|
        print "#{c+1} "
    end
    print "\n"
end



print chart([5, 3, 2, 5, 10])
