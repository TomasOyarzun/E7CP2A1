#Dado el arreglo 
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
#1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método *.select*.
print nombres.select{|elem| elem.length < 5}
puts ''
