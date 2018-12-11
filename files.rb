# rubocop:disable MethodLength
# rubocop:disable For
# rubocop:disable LineLength
# rubocop:disable AsciiComments

require_relative 'methods.rb'
require_relative 'program.rb'

def read_file
  contents = []
  File.open('./notas_alumnos.csv', 'r') { |text| contents = text.readlines }
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
  i = 0
  str.each_char { i += 1 until str[i] == ',' }
  for j in 0..i - 1 do
    name += str[j]
  end
  name
end

def grades(file, names)
  grades = []
  notas = ''
  i = 0
  file.each do |row|
    row.slice! names[i]
    notas = grade_list(row)
    grades.push(notas)
    i += 1
  end
  grades
end

def a_grade(chr)
  chr != ',' && chr != ' ' && chr != "\n" && chr != '0' && !chr.nil? && chr != ''
end

def grade_list(grades)
  notas = []
  i = 0
  grades.each_char do |chr|
    if a_grade(chr)
      if chr == '1' && grades[i + 1] == '0'
        notas.push(10)
      elsif chr == 'A'
        notas.push(chr)
      else
        notas.push(chr.to_i)
      end
    end
    i += 1
  end
  # En mi laptop windows ocurre algo extraño y me agrega un elemento 0 extra.
  # Debido a eso voy agregar una linea mas de código pero comentada.
  # notas.pop
  notas
end

def hash(names, grades)
  i = 0
  array = []
  grades.each do |variable|
    array.push(hash_alumno(names[i], variable))
    i += 1
  end
  array
end

def hash_alumno(name, grades)
  hash = {}
  hash[:name] = name
  hash[:grades] = grades
  hash
end

def create_files(arr_hash)
  file = File.open('promedios_alumnos.csv', 'a')
  file.puts "Alumno, Promedio de notas\n"
  arr_hash.each { |arr| file.puts hash_data(arr, :name).to_s + ', ' + promedio(hash_data(arr, :grades)).to_s }
  file.close
end

# rubocop:enable MethodLength
# rubocop:enable For
# rubocop:enable LineLength
# rubocop:enable AsciiComments
