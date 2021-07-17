class Judge
  attr_accessor :usr, :bot
  def initialize(usr, bot)
    @usr = usr
    @bot = bot
  end

  def judge
    case (usr - bot) % 3
    when 2
      "win"
    when 1
      "lose"
    when 0
      "draw"
    end
  end

  def return_result
    judge
  end
end