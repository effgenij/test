class Test
  attr_reader :score

  def initialize
    questions_path = "#{__dir__}/../data/questions.txt"
    @questions = File.readlines(questions_path, chomp: true)
    @this_question = 0
    @score = 0
  end

  def completed?
    @this_question >= @questions.size
  end

  def ask
    @questions[@this_question]
  end

  def user_input_valid?(user_input)
    [1, 2, 3].include?(user_input)
  end

  def next_question(user_input)
    if user_input == 1
      @score += 2
    elsif user_input == 3
      @score += 1
    end

    @this_question += 1
  end
end
