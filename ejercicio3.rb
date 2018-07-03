sw = true
main_hash = {}

while sw == true do 
puts "¿Que desea hacer?\n1-> Ingresar los datos de una persona\n2-> Editar los datos de persona\n3-> Eliminar persona
4-> Cantidad de personas ingresadas\n5-> Comunas de todas las personas\n6-> Lista con personas entre 20 y 25
7-> Suma total de todas las edades\n8-> Promedio de las edades\n9-> Mostrar lista de personas por genero
10-> S A L I R"
	answ = gets.chomp.to_i
	case answ
	when 1
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
		puts 'Ingrese el nombre de la persona a eliminar'
		main_hash.each{|key, value| puts key}
		nombre = gets.chomp.strip
		main_hash.delete(nombre.to_sym)
	when 4
	when 5
	when 6
	when 7
	when 8
	when 9
		puts main_hash
	when 10
		sw = false
	else
		puts 'Ingrese una opción valida'
	end
end
