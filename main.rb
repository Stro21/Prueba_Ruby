require_relative 'files.rb'
require_relative 'methods.rb'
require_relative 'program.rb'

file = read_file
alumnos = create_array_hash(file)
print alumnos
puts ''
