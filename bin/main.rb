#!/usr/bin/env ruby

def display_board(board)
  puts "\n#{board[0]} | #{board[1]} | #{board[2]}"
  puts '---------'
  puts "#{board[3]} | #{board[4]} | #{board[5]}"
  puts '---------'
  puts "#{board[6]} | #{board[7]} | #{board[8]}"
end
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
display_board(board)

puts "\nWelcome to Tic Tac Toe!"

puts "\nPlayer 1, what is your name?"
player1 = gets.chomp.capitalize
while player1.empty?
  puts 'Error! Please enter your name...'
  player1 = gets.chomp.capitalize
end

puts "\nPlayer 2, what is your name?"
player2 = gets.chomp.capitalize
while player2.empty?
  puts 'Error! Please enter your name...'
  player2 = gets.chomp.capitalize
end

puts "\nHello, #{player1} and #{player2}!"
puts "\n#{player1} will be X, and #{player2} will be O."

puts "\nPress ENTER to begin!"

game_on = true
turn = 1
player2move = gets.chomp.to_i

while game_on
  break if turn >= 5

  turn += 1

  puts "\n#{player1}, please select an available cell from the board..."
  player1move = gets.chomp.to_i
  until player1move.between?(1, 8)
    puts 'Invalid move! Please select a number between 1 and 8...'
    player1move = gets.chomp.to_i
  end
  puts "#{player1} selected #{player1move}." if player1move.between?(0, 8)
  if player1move == player2move
    puts 'Cell taken! Please select an available cell from the board...'
    player1move = gets.chomp.to_i
    puts "You've selected #{player1move}"
  end

  display_board(board)

  puts "\n#{player2}, please select an available cell from the board..."
  player2move = gets.chomp.to_i
  until player2move.between?(1, 8)
    puts 'Invalid move! Please select a number between 1 and 8...'
    player2move = gets.chomp.to_i
  end
  puts "#{player1} selected #{player1move}." if player2move.between?(0, 8)
  if player2move == player1move
    puts 'Cell taken! Please select an available cell from the board...'
    player2move = gets.chomp.to_i
    puts "You've selected #{player2move}"
  end

  display_board(board)

end

WINNING_COMBOS = [
  [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]
].freeze

if player1move == WINNING_COMBOS.each || player2move == WINNING_COMBOS.each
  puts "\nWinner!"
else
  puts "\nDraw!"
end
