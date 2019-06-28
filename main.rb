# Оценка уровня общительности (тест В.Ф. Ряховского)
require_relative 'lib/test'
require_relative 'lib/result_printer'
name = ARGV[0]

name = 'Инкогнито' if name.nil?

puts "Доброго времени суток, #{name}. Ответьте на вопросы."

test = Test.new
result = ResultPrinter.new(name)
until test.complited?
  puts test.ask
  user_input = nil
  until test.user_input_valid?(user_input)
    puts 'Введите: 1 если ваш ответ да, или 2 если нет, или 3 если иногда и нажмите Ввод'
    user_input = STDIN.gets.to_i
  end
  test.next_qestion(user_input)
end

result.print_status(test)
