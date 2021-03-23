# game board display
class Board
  def board
    @board = board
  end

  def display(board)
    "#{board[0]} | #{board[1]} | #{board[2]} \n---------" \
    "#{board[3]} | #{board[4]} | #{board[5]} \n---------" \
    "#{board[6]} | #{board[7]} | #{board[8]} \n"
  end

  WINNING_COMBOS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], [1, 4, 7],
    [2, 5, 8], [0, 3, 6], [0, 4, 8], [2, 4, 6]
  ].freeze
end
