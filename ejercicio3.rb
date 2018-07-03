sw = true
main_hash = {}

while sw == true do
puts '----------------------------------------' 
puts "¿Que desea hacer?\n1-> Ingresar los datos de una persona\n2-> Editar los datos de persona\n3-> Eliminar persona
4-> Cantidad de personas ingresadas\n5-> Comunas de todas las personas\n6-> Lista con personas entre 20 y 25
7-> Suma total de todas las edades\n8-> Promedio de las edades\n9-> Mostrar lista de personas por genero
10-> S A L I R"
	answ = gets.chomp.to_i
	case answ
	when 1
		puts '----------------------------------------' 
		puts 'Ingrese nombre'
		nombre = gets.chomp
		puts 'Ingrese edad'
		edad = gets.chomp.to_i
		puts 'Ingrese comuna'
		comuna = gets.chomp
		puts 'Ingrese género'
		genero = gets.chomp
		main_hash[nombre.to_sym] = edad, comuna, genero
	when 2
		puts '----------------------------------------' 
		puts 'Ingrese el nombre de la persona a editar'
		main_hash.each{|key, value| puts key}
		nombre = gets.chomp.strip
		puts 'Ingrese nombre'
		new_name = gets.chomp
		puts 'Ingrese edad'
		edad = gets.chomp.to_i
		puts 'Ingrese comuna'
		comuna = gets.chomp
		puts 'Ingrese género'
		genero = gets.chomp
		main_hash.delete(nombre.to_sym)
		main_hash[new_name.to_sym] = edad, comuna, genero
	when 3
		puts '----------------------------------------' 
		puts 'Ingrese el nombre de la persona a eliminar'
		main_hash.each{|key, value| puts key}
		nombre = gets.chomp.strip
		main_hash.delete(nombre.to_sym)
	when 4
		puts '----------------------------------------' 
		puts main_hash.length
	when 5
		puts '----------------------------------------' 
		a = []
		a[0] = main_hash.map{|key, value| value[1].capitalize}
		puts a
	when 6
		puts '----------------------------------------' 
		a = main_hash.select{|key, value| value[0] > 20 && value[0] < 25 }
		puts a
	when 7
		puts '----------------------------------------' 
		a = main_hash.map{|key, value| value[0]}
		puts "El valor total de las edades es: #{a.inject(0){|sum, x| sum + x}}"
	when 8
		puts '----------------------------------------' 
		a = main_hash.map{|key, value| value[0]}
		puts "El promedio de las edades es: #{a.inject(0){|sum, x| sum + x} / a.length}"
	when 9
		puts '----------------------------------------' 
		puts main_hash.sort_by{|key, value| value[2]}
	when 10
		sw = false
	else
		puts '----------------------------------------' 
		puts 'Ingrese una opción valida'
	end
end
