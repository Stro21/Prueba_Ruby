require_relative 'program.rb'

# Calcula el promedio de notas.
def promedio(notas)
  p = notas.inject do |sum, nota|
    if nota == 'A'
      sum + 1
    else
      sum + nota
    end
  end
  (p.to_f / notas.length.to_f).round.to_i
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
  alumnos.each { |nombre, notas| puts nombre if aprobado(promedio(notas)) }
end
