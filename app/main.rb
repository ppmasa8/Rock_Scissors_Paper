require './validates'
require './judge'

# Main
str = gets.chomp

## Validation
valid = Validates.new(str)
unless valid.validate
  puts "Your input is '#{valid.str}'."
  puts valid.error_messages
  exit
end

## Bot choose
bot = Random.rand(99) % 3
bot_str = case bot
          when 0
            "rock"
          when 1
            "scissors"
          when 2
            "paper"
          end

## Judge
str_trans_to_int = case str
                   when "rock"
                     0
                   when "scissors"
                     1
                   when "paper"
                     2
                   end
judge = Judge.new(str_trans_to_int, bot)
puts "Your select :#{str}"
puts "Com  select :#{bot_str}"
puts judge.return_result