class Question

  attr_accessor :a, :b, :solution, :correct

  def initialize
    @a = Random.new.rand(0..20)
    @b = Random.new.rand(0..20)
    @solution = @a + @b
  end

  def ask_question
    puts "What is #{@a} + #{@b}?"
  end

  def check_answer(answer)
    @solution == answer
  end
    

end

q1 = Question.new
puts q1.a
puts q1.b
puts q1.ask_question
puts q1.check_answer(9)
puts q1.solution
puts "-----"
q2 = Question.new
puts q2.a
puts q2.b
puts q2.solution