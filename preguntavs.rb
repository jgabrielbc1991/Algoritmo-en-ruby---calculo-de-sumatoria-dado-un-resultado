#!/usr/bin/env ruby

puts "Hola, dime la serie de numeros que vamos a comparar. Cuando estes listo escribe 'ya'"
array = []                                                        #Declaramos el array vacio
lista = gets.chomp                                                #Se captura el primer número
array << lista                                                    #Se lleva el valor de 'lista' a la ultima posición del array
loop do                                                           #Iniciamos el ciclo
    puts '¿otro numero?'                                          
    lista = gets.chomp
    array << lista
    lista = array.last                                            #Asignamos a 'lista' el ultimo valor del array
    break if lista == 'ya'                                        #Si escribimos 'ya' se detiene el ciclo
end
  array.pop                                                       #El último 'ya' entra en el array, asi que con pop lo retiramos.
  puts "Estos son los numeros que me indicaste #{array}"          #se muestran los números en pantalla
puts 'Ahora dime el numero resultado'
resultado=gets.chomp.to_i                                         #Se captura el valor de 'resultado'
puts "El numero resultado que elegiste es #{resultado}"           #Se muestra el valor de 'resultado'
array2 = array.map { |x| resultado - x.to_i }                     #Se crea un nuevo array cuyos numeros son iguales al valor de resultado menos cada uno de los valores del array original. Ej: array=[3,4,8] resultado=12, array2=[9,8,4]
array3 = array.map { |x| x.to_i } & array2.map { |x| x.to_i }     #Se crea un tercer array donde se intersectan el primero y el segundo, para obtener los números iguales, Ej: array3=[4,8]
numero1 = array3.map { |x| x.to_i }[0]                            #Se mapea el tercer array para separar los dos números obtenidos
numero2 = array3.map { |x| x.to_i }[1]            
posicion1 = array.map { |x| x.to_i }.index(numero1) + 1           #Se mapea el primer array para determinar la posicion de los dos números obtenidas en el array3 en el primer array. 
posicion2 = array.map { |x| x.to_i }.index(numero2) + 1           #Se les suma 1 para darle al usuario la posicion natural y no el indice.

puts "Segun los valores escogidos, los que sumados dan como resultado
#{resultado} estan en las posiciones: #{posicion1} y #{posicion2}"