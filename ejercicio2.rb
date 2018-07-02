#Dado el arreglo 
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
#1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método *.select*.
print nombres.select{|elem| elem.length < 5}
puts ''
#2- Utilizando *.map* crear una arreglo con los nombres en minúscula.
print a = nombres.map{|elem| elem.downcase}
puts ''
#3- Utilizando *.select* para crear un arreglo con todos los nombres que empiecen con P.
print a = nombres.select{|elem| elem[0] == 'P'}
puts ''
#4- Utilizando *.map* crear un arreglo único con la cantidad de letras que tiene cada nombre.
print a = nombres.map{|elem| elem.length}
puts ''
#5- Utilizando *.map* y *.gsub* eliminar las vocales de todos los nombres.
print a = nombres.map{|elem| elem.gsub(/[aeiou]/, '')}




