class Ball
  def initialize (ball_type = nil)
    @ball_type = ball_type
  end

  def ball_type
    if @ball_type.nil?
      return "regular"
    else
      return "super"
    end 
  end
end

ball1 = Ball.new("super").ball_type
ball2 = Ball.new.ball_type

puts ball1
puts ball2
