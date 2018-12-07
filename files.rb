require_relative 'methods.rb'
require_relative 'program.rb'

def read_file
  file = File.open('./notas_alumnos.csv', 'r')
  contents = file.readlines
  file.close
  contents
end
