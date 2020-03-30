class Question
  def math_problem
    num1 = rand(21).to_i
    num2 = rand(21).to_i
    answer = num1 + num2
    puts "What is #{num1} + #{num2}?"
    user_answer = gets.chomp.to_i
    user_answer == answer ? "Yes! That's right!" : "uhh ... not really"
  end
end

problem1 = Question.new
puts problem1.math_problem