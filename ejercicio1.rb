#Dado el array:
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
#1. Utilizando *map* generar un nuevo arreglo con cada valor aumentado en 1.
b = a.map{|elem| elem + 1}
print b
puts ''
#2. Utilizando *map* generar un nuevo arreglo que contenga todos los valores convertidos a *float*.
b = a.map{|elem| elem.to_f}
print b
puts ''
#3. Utilizando *map* generar un nuevo arreglo que contenga todos los valores convertidos a *string*.
b = a.map{|elem| elem.to_s}
print b
puts ''
#4. Utilizando *reject* descartar todos los elementos <u>menores</u> a 5 en el array.
b = a.reject{|elem| elem < 5}
print b
puts ''
#5. Utilizando *select* descartar todos los elementos <u>mayores</u> a 5 en el array.
b = a.select{|elem| elem <= 5}
print b
puts ''
#6. Utilizando *inject* obtener la suma de todos los elementos del array.
b = a.inject(0){|sum, x| sum + x}
puts b
#7. Utilizando *group_by* agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
b = a.group_by{|elem| elem.even?}
print b
puts ''
#8. Utilizando *group_by* agrupar todos los números mayores y menores que 6.
b = a.group_by{|elem| elem > 6}
print b
puts ''