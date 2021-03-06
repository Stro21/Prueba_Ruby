require_relative 'program.rb'
require_relative 'files.rb'

# rubocop:disable LineLength

# Calcula el promedio de notas.
def promedio(notas)
  p = notas.inject do |sum, nota|
    if nota == 'A'
      sum + 1
    else
      sum + nota
    end
  end
  (p.to_f / notas.length.to_f)
end

# Cuenta la cantidad de inasistencias totales por alumno.
def inasistencia(arr)
  a = 0
  arr.each { |e| a += 1 if e == 'A' }
  a
end

def aprobado(nota)
  nota >= 5
end

def inasistencias_totales(name, ina)
  puts 'Las inasistencias totales de ' + name + ' son ' + inasistencia(ina).to_s
end

def alumnos_aprobados(alumnos)
  puts 'Los alumnos aprobados son:'
  alumnos.each { |alumno| puts hash_data(alumno, :name) if aprobado(promedio(hash_data(alumno, :grades))) }
end

def hash_data(hash, key)
  hash[key]
end

# rubocop:enable LineLength
