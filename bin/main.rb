#!/usr/bin/env ruby

require_relative '../lib/board'
require_relative '../lib/player'

def display(board)
  puts "\n#{board[0]} | #{board[1]} | #{board[2]}"
  puts '---------'
  puts "#{board[3]} | #{board[4]} | #{board[5]}"
  puts '---------'
  puts "#{board[6]} | #{board[7]} | #{board[8]}"
end
board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
display(board)

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

puts "\nLet's begin!"

game_on = true
turn = 1
WINNING_COMBOS = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8], [1, 4, 7],
  [2, 5, 8], [0, 3, 6], [0, 4, 8], [2, 4, 6]
].freeze
p1_array = []
p2_array = []
player2move = []

while game_on
  if turn >= 5
    puts "\nDraw!"
    break
  end

  turn += 1

  puts "\n#{player1}, please select an available cell from the board..."
  player1move = gets.chomp.to_i
  symbol1 = 'x'
  p1_array << player1move
  until player1move.between?(0, 8)
    puts 'Invalid move! Please select a number between 0 and 8...'
    player1move = gets.chomp.to_i
  end
  puts "\n#{player1} selected #{player1move}." if player1move.between?(0, 8)
  if player1move == player2move
    puts 'Cell taken! Please select an available cell from the board...'
    player1move = gets.chomp.to_i
    puts "\nYou've selected #{player1move}"
  end

  board[player1move] = symbol1
  display(board)

  if WINNING_COMBOS.include? p1_array
    puts "\n#{player1} WINS!"
    break
  end

  puts "\n#{player2}, please select an available cell from the board..."
  player2move = gets.chomp.to_i
  symbol2 = 'o'
  p2_array << player2move
  until player2move.between?(0, 8)
    puts 'Invalid move! Please select a number between 0 and 8...'
    player2move = gets.chomp.to_i
  end
  puts "\n#{player2} selected #{player2move}." if player2move.between?(0, 8)
  if player2move == player1move
    puts 'Cell taken! Please select an available cell from the board...'
    player2move = gets.chomp.to_i
    puts "\nYou've selected #{player2move}"
  end

  board[player2move] = symbol2
  display(board)

  if WINNING_COMBOS.include? p2_array
    puts "\n#{player2} WINS!"
    break
  end
end
