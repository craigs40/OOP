#!/usr/bin/env ruby

def board(number)
  puts "\n#{number[0]} | #{number[1]} | #{number[2]}"
  puts "---------"
  puts "#{number[3]} | #{number[4]} | #{number[5]}"
  puts "---------"
  puts "#{number[6]} | #{number[7]} | #{number[8]}"
end
number = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
board(number)

puts "\nWelcome to Tic Tac Toe!"

puts "\nPlayer 1, what's your name?"
player1 = gets.chomp.capitalize
puts "\nPlayer 2, what's your name?"
player2 = gets.chomp.capitalize
puts "\nHello, #{player1} and #{player2}!"

puts "\n#{player1} will be X, and #{player2} will be O."
puts "\nLet's Go!"

puts "\nIt's #{player1}'s turn!"
puts "Please select an available cell from the board..."
player1move = gets.chomp.to_i - 1

puts "\nIt's #{player2}'s turn!"
puts "Please select an available cell from the board..."
player2move = gets.chomp.to_i - 1
