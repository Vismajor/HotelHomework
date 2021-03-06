class Game

  attr_accessor :player1, :player2
  attr_reader :moves

  WINNING_LINES = [ [0,1,2], [2,4,5], [6,7,8], [0,3,6,], [1,4,7], [2,5,8], [0,4,8], [2,4,6] ]

  def initialize 
    @moves = []
  end

  def finished?
    winning_game? || drawn_game?
  end

  def result
    case 
    when winning_game? 
      "#{moves.last.player} won!"
    when drawn_game?
      "It is a draw!"
    else
      "Game is still in progress!"
    end
  end 

  def whose_turn
      return player1 if moves.empty?
    moves.last.player == player1 ? player2 : player1
  end

  def make_move(player, square)
    if valid_move(player, square)
      @moves << Move.new(square, symbol_for_player(player), player) #check for conditions
    else
      print "Sorry, invalid input"
    end
  end

  def board
    empty_board.tap do |board|
      moves.each do |move|
        board[move.square] = move.symbol
      end
    end
  end

  def empty_board
    Array.new(9,nil)
  end

  def valid_move(player, square)
    square < 9 && square > -1 && !moves.detect { |move| move.square == square } && player == whose_turn 
  end

  private
  def winning_game?
    !!WINNING_LINES.detect do |winning_line|
      %w(XXX OOO).include?(winning_line.map { |e| board[e] }.join) #map looks up the winning line, checks for the first winning line array, changes indexes to O or X, and then checks if it is XXX or OOO
    end
  end

  # private
  # def winning_game?
  #   # is there a winner?
  # end

  private
  def drawn_game?
    moves.size == 9 # is it a draw? 
  end

  private
  def symbol_for_player(player)
    case player
    when player1
      'X'
    when player2
      '0'
    else
      raise "Oi, that's not one of my players!"
    end
  end


end