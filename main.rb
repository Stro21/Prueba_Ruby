require_relative 'files.rb'
require_relative 'methods.rb'
require_relative 'program.rb'
require 'csv'

file = []
CVS.foreach('notas_alumnos.csv') do |row|
  file.push(row.to_s)
end
print file
