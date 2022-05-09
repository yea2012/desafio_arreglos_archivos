# Se pide:
# Crear un archivo llamado calculo_notas2.rb.
# Crear un método llamado notas_mas_alta dentro del archivo calculo_notas2.rb,
# que reciba un arreglo, con los nombres y notas de los alumnos, y devuelva un arreglo
# que contenga solo las notas más alta de cada alumno.

require 'csv'

def nota_mas_alta(data)
    notas=[]
    data.count.times do |i|
        sub_arr=data[i]
        sub_arr.delete(sub_arr[0])
        notas << sub_arr.max #crea arreglo con las notas mas altas
    end
    print "#{notas} \n"
end

data=CSV.open('notas.data',converters: :numeric).readlines
data.reject! {|x| x.empty?}
# print "#{data} \n"
nota_mas_alta(data)


