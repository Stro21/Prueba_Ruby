# rubocop:disable MethodLength

require_relative 'methods.rb'
require_relative 'files.rb'

def prorama(opt, hash)
  if opt == 1
    option1(hash)
  elsif opt == 2
    option2(hash)
  elsif opt == 3
    option3(hash)
  elsif opt == 4
    puts 'Se salio del programa.'
    exit(0)
  else
    puts 'Opción incorrecta'
    inicio_programa(hash)
  end
end

def inicio_programa(hash)
  puts 'Ingrese una opción del 1 al 4 (la opción 4 es salir del programa'
  opt = gets.chomp.to_i
  programa(opt, hash)
end

# Cuenta las inasistencias totales
def option2(hash)
  puts 'Las inasistencias totales de los alumnos son: '
  hash.each { |nombre, notas| inasistencias_totales(nombre, notas) }
  inicio_programa(hash)
end

# Muestra los alumnos aprobados
def option3(hash)
  alumnos_aprobados(hash)
  inicio_programa(hash)
end

# rubocop:enable MethodLength
