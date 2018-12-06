require_relative 'program.rb'

# Calcula el promedio de notas.
def promedio(notas)
  p = notas.inject do |sum, nota|
    if nota == 'A'
      sum + 1
    else
      sum + nota.to_i
    end
  end
  p / notas.length
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
