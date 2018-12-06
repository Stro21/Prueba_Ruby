# rubocop:disable AsciiComments

# La clase alumno que contiene el nombre y sus notas.
class Alumno
  def initialize(nombre, notas)
    @nombre_alumno = nombre
    @notas_alumno = notas
  end

  def nombre=(nombre)
    @nombre_alumno = nombre
  end

  def nombre
    @nombre_alumno
  end

  def notas=(notas)
    @notas_alumno = notas
  end

  def notas
    @notas_alumno
  end

  # Calcula el promedio de notas del alumno.
  def promedio_notas
    total = @notas_alumno.inject do |sum, n|
      if n == 'A'
        sum + 1
      else
        sum + n
      end
    end
    total / @notas_alumno.length
  end

  # Verifica si aprobó o no.
  def aprobado(nota)
    nota >= 5
  end

  # Método que llama al método que revisa si aprobó o no.
  def alumno_aprobado
    aprobado(promedio_notas)
  end

  # Método que dice la cantidad de inasistencias totales.
  def inasistencias
    @notas_alumno.inject { |sum, n| sum + 1 if n == 'A' }
  end
end

# rubocop:enable AsciiComments
