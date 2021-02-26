#Modulos

require "rubygems"
require "colorize"

puts ""
puts " Calculadora".colorize(:cyan)
puts "__________________ \n".colorize(:blue)

def menu
	puts " OPCIONES".colorize(:cyan)
	puts "__________________ ".colorize(:blue)
	puts " 1_ Sumar "
	puts " 2_ Restar "
	puts " 3_ Multiplicar "
	puts " 4_ Dividir "
	puts " 5_ Acerca de mi "
	puts " 6_ Salir \n "
end

#Invoca la funcion
menu

def opciones
	print " Elige una opcion = ".colorize(:cyan)

	opcion = gets.chomp.to_i

	if opcion == 1 
		print " Sumar = "
		num1 = gets.chomp.to_i
		print " + "
		num2 = gets.chomp.to_i
		sumar = num1 + num2
		puts " El Resultado es #{sumar} \n ".colorize(:green)

		#Retornar el codigo
		print " ¿Desea realizar otro calculo [1 para aceptar o presiona ENTER para salir]? = ".colorize(:cyan)
		retornar = gets.chomp.to_i
		
		if retornar == 1
				puts ""
				menu
			return(opciones)

		else 
			puts " Saliendo... \n "
		end
	end

	if opcion == 2
		print " Restar = "
		num1 = gets.chomp.to_i
		print " - "
		num2 = gets.chomp.to_i
		restar = num1 - num2
		puts " El Resultado es #{restar} \n ".colorize(:green)

		#Retornar el codigo
		print " ¿Desea realizar otro calculo [1 para aceptar o presiona ENTER para salir]? = ".colorize(:cyan)
		retornar = gets.chomp.to_i
		
		if retornar == 1 
				puts ""
				menu
			return(opciones)

		else
			puts " Saliendo... \n "
		end
	end

	if opcion == 3
		print " Multiplicar = "
		num1 = gets.chomp.to_i
		print " x "
		num2 = gets.chomp.to_i
		multiplicar = num1 * num2
		puts " El Resultado es #{multiplicar} \n ".colorize(:green)

		#Retornar el codigo
		print " ¿Desea realizar otro calculo [1 para aceptar o presiona ENTER para salir]? = ".colorize(:cyan)
		retornar = gets.chomp.to_i
		
		if retornar == 1 
				puts ""
				menu
			return(opciones)

		else 
			puts " Saliendo... \n \n"
		end
	end

	if opcion == 4 
		print " Dividir = "
		num1 = gets.chomp.to_i 
		print " ÷ "
		num2 = gets.chomp.to_i 
		dividir = num1 / num2.to_f
		puts " El Resultado es #{dividir} \n ".colorize(:green)

		#Retornar el codigo
		print " ¿Desea realizar otro calculo [1 para aceptar o presiona ENTER para salir]? = ".colorize(:cyan)
		retornar = gets.chomp.to_i
		
		if retornar == 1 
				puts ""
				menu
			return(opciones)

		else 
			puts " Saliendo... \n \n"
		end

	end

	if opcion == 5
		puts ""

		puts " Hecho por Martin Valdez"
		puts " Copyright (c) 2003 Company Name"
		puts " This product is protected by copyright and distributed under"
		puts " licenses restricting copying, distribution, and decompilation. \n \n"

		#Retornar el codigo

		print " ¿Desea realizar un calculo [1 para aceptar o presiona ENTER para salir]? = ".colorize(:cyan)
		retornar = gets.chomp.to_i
		
		if retornar == 1 
				puts ""
				menu
			return(opciones)

		else 
			puts " Saliendo... \n "
		end
	end

	if opcion == 6 
		puts " Saliendo... \n \n"
	end

	if opcion >= 7
		puts "" 
		puts " Numero Incorrecto,por favor vuelva a intentarlo".colorize(:red)
		puts ""
		menu
		opciones
	end
end

opciones

