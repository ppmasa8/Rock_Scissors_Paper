## input = "rock" or "scissors" or "paper"
EXPECTED_INPUTS = ["rock", "scissors", "paper"]
ERRORS_MSG      = "Please enter either 'rock', 'scissors', or 'paper' in lower case."

class Validates
  attr_accessor :str

  def initialize(str)
    @str  = str
  end

  def error_messages
    ERRORS_MSG
  end

  def validate
    ensure_datatype?
  end

  def ensure_datatype?
    EXPECTED_INPUTS.include?(str)
  end
end