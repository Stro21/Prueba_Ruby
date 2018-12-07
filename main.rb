require_relative 'files.rb'
require_relative 'methods.rb'
require_relative 'program.rb'
require 'csv'

# file = []
# CVS.foreach('notas_alumnos.csv') do |row|
#   file.push(row.to_s)
# end
# print file
file = File.open("./notas_alumnos.csv", "r")
contents = file.readlines
file.close
print contents
