require 'pry-byebug'

require_relative 'game'
require_relative 'move'

puts `clear`
puts "Playing TTT..."


def expect(thing, other_thing) 
  raise "#{thing} did not equal #{other_thing}" unless thing == other_thing
end

def print_board(g)
  puts(g.board.each_slice(3).map do |row|
        row.map { |e| e || ' ' }.join(' | ')
      end.join("\n---------\n"))
end

# def print_board(g)
#   0.upto(8) do |index|
#     print " "
#     if g.board[index]
#       print g.board[index]
#     else 
#       print index
#     end
#     if ((index+1)%3 == 0)&& not(index==8)
#       print "\n"
#       11.times{print "-"}
#       print "\n"
#     else
#       print " |" unless (index == 8)
#     end
#   end
# end

g = Game.new


# expect g.class.name, "Game"

# g.player1 = "Michael"
# g.player2 = "Neil"

# expect g.player1, "Michael"
# expect g.player2, "Neil"

# g.make_move 'Michael', 4

# expect g.moves.last.class.name, "Move"

# expect g.moves.last.player, "Michael"
# expect g.moves.last.square, 4
# expect g.moves.last.symbol, "X"

# g.make_move 'Neil', 2

# expect g.moves.last.player, "Neil"
# expect g.moves.last.square, 2
# expect g.moves.last.symbol, "0"


# expect g.finished?, false

# g.make_move 'Michael', 0
# g.make_move 'Neil', 1
# g.make_move 'Michael', 8

# expect g.finished?, true 

# expect g.result, "Michael won!"


# g = Game.new

# puts "What is player 1's name?"
# g.player1 = gets.chomp
# # while g.player1 == ''
# #   puts "Please put in a valid name"
# # end
  

# puts "What is player 2's name?"
# g.player2 = gets.chomp
# # if g.player2 == ''
# #   puts "Please put in a valid name"
# end

# puts "What is player 2's name?"
# g.player2 = gets.chomp

def tictactoe
  g = Game.new
  puts `clear`
  puts "Please enter the name of player1"
  g.player1 = gets.chomp
  puts "Please enter the name of player2"
  g.player2 = gets.chomp

  until g.finished?
    puts `clear`
    puts
    print_board(g)
    puts
    puts "#{g.whose_turn}'s turn"
    input = gets.chomp.downcase
    if input.to_i.to_s == input
      g.make_move(g.whose_turn, input.to_i)
    else 
      until input.is_a?(Fixnum) do
        print "Please enter a number: "
        input = Integer(gets) rescue nil
      end
    end
  end

  puts `clear`
  puts g.result
  puts "\n Would you like a (r)ematch?"
  case gets.chomp.downcase
  when 'r'
    tictactoe
  end
end

tictactoe


binding.pry;''