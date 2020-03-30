class Question
  attr_accessor :turn

  def initialize(player1, player2)
    @turn = Turn.new(player1, player2)
  end

  def math_problem
    num1 = rand(21).to_i
    num2 = rand(21).to_i
    answer = num1 + num2
    puts "#{turn.current_player}: What is #{num1} + #{num2}?"
    user_answer = gets.chomp.to_i
    puts user_answer == answer ? "#{turn.current_player}: Yes! That's right!" : "#{turn.current_player}: uhh ... not really"
    return user_answer == answer ? true : false
  end
end

# problem1 = Question.new
# puts problem1.math_problem