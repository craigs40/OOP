#!/usr/bin/env ruby

class Player
  attr_reader :name, :symbol

  def initialize
    @selection = []
    @player2move = gets.chomp.to_i
  end
end
