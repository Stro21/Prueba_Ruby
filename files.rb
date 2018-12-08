require_relative 'methods.rb'
require_relative 'program.rb'

def read_file
  file = File.open('./notas_alumnos.csv', 'r')
  contents = file.readlines
  file.close
  contents
end

def create_array_hash(file)
  names = names(file)
  print names
  puts ''
  grades = grades(file, names)
end

def names(file)
  names = []
  file.each { |row| names.push(get_name_file(row)) }
  names
end

def get_name_file(str)
  name = ''
  str.each_char { |chr| name += chr until chr == ',' }
  name
end

def grades(file, names)
  grades = []
  notas = ''
  i = 0
  file.each do |row|
    notas = row.slice! names[i]
    grades.push(notas)
    i += 1
  end
  grades
end

def grade_list(grades)
  
end