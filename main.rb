require_relative 'files.rb'
require_relative 'methods.rb'
require_relative 'program.rb'

file = File.read('notas_alumnos.csv', 'r')
contents = file
print contents
puts ''
file.close
