class Question
  def math_problem
    num1 = rand(21).to_i
    num2 = rand(21).to_i
    "What is #{num1} + #{num2}?"
  end
end

problem1 = Question.new
puts problem1.math_problem