# Se tiene un archivo notas.data con las notas de un curso.
# Javiera,9,5,3,9
# Francisca,8,3,5,5
# Juan,9,5,5,9
# Pedro,5,4,6,8
# Cecilia,8,7,8,8
# Crear un método llamado nota_mas_alta dentro del archivo calculo_notas.rb que
# reciba un arreglo con el nombre y notas del alumno y devuelva la nota más alta.
# Ejemplos:
# ○ nota_mas_alta(data[0]) => 9.
# ○ nota_mas_alta(data[1]) => 8.

#abrir el archivo
data = open('notas.data').readlines

#información obtenida del archivo
#["Javiera,9,5,3,9\r\n", "Francisca,8,3,5,5\r\n", "Juan,9,5,5,9\r\n", "Pedro,5,4,6,8\r\n", "Cecilia,8,7,8,8"]

#Se hace un split para separar la información
data = data.map do |i|
    i.split(',')
end

    








#se define el método

def nota_mas_alta(arr)
    #Se cambian los nombres por numeros 0
    arr[0] = 0

    #Se cambia todo a enteros
    arr2 = arr.map do |j|
        j.to_i
    end

    #se retorna la nota maxima
    return arr2.max
end

print nota_mas_alta(data[0])
puts