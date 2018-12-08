# rubocop:disable MethodLength

require_relative 'methods.rb'
require_relative 'files.rb'

def programa(opt, arr_hash)
  if opt == 1
    option1(arr_hash)
  elsif opt == 2
    option2(arr_hash)
  elsif opt == 3
    option3(arr_hash)
  elsif opt == 4
    puts 'Se salio del programa.'
    exit(0)
  else
    puts 'Opción incorrecta'
    inicio_programa(arr_hash)
  end
end

def inicio_programa(arr_hash)
  puts 'Ingrese una opción del 1 al 4 (la opción 4 es salir del programa).'
  opt = gets.chomp.to_i
  programa(opt, arr_hash)
end

# Cuenta las inasistencias totales
def option2(arr_hash)
  puts 'Las inasistencias totales de los alumnos son: '
  arr_hash.each { |nombre, notas| inasistencias_totales(nombre, notas) }
  inicio_programa(arr_hash)
end

# Muestra los alumnos aprobados
def option3(arr_hash)
  alumnos_aprobados(arr_hash)
  inicio_programa(arr_hash)
end

# rubocop:enable MethodLength
