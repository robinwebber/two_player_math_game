class Question

  attr_accessor :a, :b, :solution

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

