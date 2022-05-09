# Crear el archivo grafico.rb utilizando el método chart, que construya el siguiente gráfico
# en la consola, a partir de un arreglo con datos numéricos.
# ➜ irb
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
# Tips:
# Por cada dato del arreglo, se debe imprimir un | y una cantidad de * # equivalente al número.
# Una solución más avanzada podría ajustar la cantidad de * a mostrar # por cada número. 
# La solución inicial debe multiplicar 2 * por cada número, ejemplo si
# arreglo[0] = 3, implica ******.
# Es importante encontrar el número máximo.
def chart(array)
    # largo=array.count
    # print "#{largo} \n"
    impr_2 =array.max
    array.count.times do |i|
        print "| #{"*"*array[i]*2} \n"
    end
    print "> #{"-"*impr_2*2} \n" #imprime la segunda parte del grafico >----..n
    impr_2.times do |i| #imprime la tercera parte del grafico
        print "#{i + 1} \s"
    end
end
array=ARGV
# print "#{array} \n"
array.map!{|e| e.to_i} #transforma a entero el arreglo
# print "#{array} \n"
chart(array)