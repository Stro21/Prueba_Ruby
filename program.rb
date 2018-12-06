# rubocop:disable MethodLength

require_relative 'methods.rb'
require_relative 'files.rb'

def prorama(opt, arr)
  if opt == 1
    option1(arr)
  elsif opt == 2
    option2(arr)
  elsif opt == 3
    option3(arr)
  elsif opt == 4
    puts 'Se salio del programa.'
    exit(0)
  else
    puts 'Error'
    exit(1)
  end
end

# rubocop:enable MethodLength
