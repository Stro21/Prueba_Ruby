require_relative 'files.rb'
require_relative 'methods.rb'
require_relative 'program.rb'

file = read_file
alumnos = create_array_hash(file)
print alumnos
puts ''
llaves = alumnos.keys
notas = alumnos.values
puts 'Promedio de ' + llaves[0] + ' es ' + promedio(notas[0]).to_s
puts 'Promedio de ' + llaves[1] + ' es ' + promedio(notas[1]).to_s
inasistencias_totales(llaves[2], notas[2])
