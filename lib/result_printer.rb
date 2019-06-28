class ResultPrinter
  def initialize(name)
    results_path = "#{File.dirname(__FILE__)}/../data/results.txt"
    @results = File.readlines(results_path, chomp: true)

    @name = name
  end

  def print_status(test)
    puts "\n #{@name}"

    puts "\nПо результатам теста у вас очков: #{test.score}."

    case test.score
    when 30..32
      test_result = 0
    when 25..29
      test_result = 1
    when 19..24
      test_result = 2
    when 14..18
      test_result = 3
    when 9..13
      test_result = 4
    when 4..8
      test_result = 5
    when 0..3
      test_result = 6
    end

    puts @results[test_result]
  end
end
