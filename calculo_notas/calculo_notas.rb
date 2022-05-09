# Crear un método llamado nota_mas_alta dentro del archivo calculo_notas.rb que
# reciba un arreglo con el nombre y notas del alumno y devuelva la nota más alta.

require 'csv'

def nota_mas_alta(data)
    data.count.times do |i|
        sub_arr=data[i]
        sub_arr.delete(sub_arr[0])#elimina el primer registro del arreglo para sacar el maximo
        mayor=sub_arr.max
        puts mayor
    end
end

data=CSV.open('notas.data',converters: :numeric).readlines # lee archivo, lo asigna y transforma a numero
data.reject! {|x| x.empty?} # se agrega si es que archivo contenga vacios
  # print "#{data} \n"
nota_mas_alta(data)

