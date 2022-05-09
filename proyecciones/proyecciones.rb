# Crear el programa proyecciones.rb y un archivo con las proyecciones de venta de cada
# mes del próximo año. Este archivo debe llamarse ventas_base.db y estar en la misma
# carpeta de trabajo que el código. Para realizar el ejercicio puedes agregar como contenido
# los siguientes datos:
# 300070,50520,35000,32810,47999,62050,89100,21000,100010,121900,99549,210000
# El desafío consiste en hacer 2 simulaciones.
# Las ventas totales del primer semestre, dado que en la primera mitad del semestre
# se vende un 10% más.
# Las ventas totales del segundo semestre, dado que en la segunda mitad del
# semestre se vende un 20% más.
# El resultado debe ser presentado en un archivo llamado resultados.data. Los datos deben
# contener máximo 2 decimales y estar cada uno en una sola línea.

require 'csv'

def proyeccion(array,aumento,indice1,indice2)
    proyec=array[indice1..indice2].sum
    proyec1= (proyec * ((aumento.to_f/100)+1)).truncate(2)
    #print "#{proyec1} \n"
end

ventas=CSV.open('ventas_base.db').read
ventas_nvo=ventas[0]
ventas_nvo.map!{|e| e.to_i}
print "#{ventas_nvo} \n"

result=[proyeccion(ventas_nvo,10,0,5),proyeccion(ventas_nvo,20,6,11)]
print "#{result} \n"

CSV.open('resultados.data','w') do |csv|
    result.each do |r|
         csv << [r] #lo que escribe si o si debe ser un array
    end
end











