require_relative 'methods.rb'
require_relative 'program.rb'

# rubocop:disable MethodLength

def read_file
  file = File.open('./notas_alumnos.csv', 'r')
  contents = file.readlines
  file.close
  contents
end

def create_array_hash(file)
  names = names(file)
  grades = grades(file, names)
  hash = hash(names, grades)
  hash
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
  string = ''
  i = 0
  file.each do |row|
    string = row.slice! names[i]
    notas = grade_list(string)
    grades.push(notas)
    i += 1
  end
  grades
end

def a_grade(chr)
  chr != ',' && chr != ' ' && chr != "\n"
end

def grade_list(grades)
  notas = []
  i = 0
  grades.each_char do |chr|
    if a_grade(chr)
      if chr == '1' && grades[i + 1] == '0'
        notas.push('10')
      else
        notas.push(chr)
      end
    end
    i += 1
  end
  notas
end

def hash(names, grades)
  i = 0
  hash = {}
  grades.each do |variable|
    hash[names[i]] = variable
    i += 1
  end
  hash
end

# rubocop:enable MethodLength
