#!/usr/bin/env ruby

def display_board(board)
  puts "\n#{board[0]} | #{board[1]} | #{board[2]}"
  puts '---------'
  puts "#{board[3]} | #{board[4]} | #{board[5]}"
  puts '---------'
  puts "#{board[6]} | #{board[7]} | #{board[8]}"
end
board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
display_board(board)

puts "\nWelcome to Tic Tac Toe!"

puts "\nPlayer 1, what is your name?"
player1 = gets.chomp.capitalize
puts "\nPlayer2, what is your name?"
player2 = gets.chomp.capitalize
puts "\nHello, #{player1} and #{player2}!"
puts "\n#{player1} will be X, and #{player2} will be O."

puts "\nLet's begin!"

puts "\n#{player1}, please select an available cell from the board..."
player1move = gets.chomp.to_i
if player1move.between?(0, 8)
  puts "#{player1} selected #{player1move}."
end

while !player1move.between?(0, 8)
  puts 'Invalid move! Please select a number between 0 and 8...'
  player1move = gets.chomp.to_i
end

puts "\n#{player2}, please select an available cell from the board..."
player2move = gets.chomp.to_i
if player2move.between?(0, 8)
  puts "#{player2} selected #{player2move}"
end

while !player2move.between?(0, 8)
  puts 'Invalid move! Please select a number between 0 and 8...'
  player2move = gets.chomp.to_i
end

if player1move == player2move
  puts 'Cell taken! Please select an available cell from the board...'
  answer = gets.chomp.to_i
  puts "You've selected #{answer}"
end

if player1move == WINNING_COMBOS || player2move == WINNING_COMBOS
  puts 'Winner!'
else
  puts 'Draw!'
end

WINNING_COMBOS = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]
].freeze
