require_relative './spec_helper'
require_relative './bin/main'

describe game_on do
#class?
  player1 = gets.chomp.capitalize
  player2 = gets.chomp.capitalize

  player1move = gets.chomp.to_i
  player2move = gets.chomp.to_i
  p1_array
end

describe Player do
    let(:player_test1) { Player.new('X', 'player1', [1, 4, 7]) }
    let(:player_test2) { Player.new('X', 'player2', [1, 3, 7]) }
    #let(:player_test3) { Player.new('O', 'player3', [1, 3, 4]) }
    describe '#winner?' do
      it 'player2 is not a winner' do
        expect(player1_test2.include?).not_to eql(true)
      end
      it 'player 1 is a winner' do
        expect(player1_test1.include?).to eql(true)
      end
    end
 context 'testing a draw situation when no player is a winner' do
      it 'it s a draw , no player is winining' do
        expect(player_test2.winner? && player_test3.winner?).not_to eql(true)
      end
    end
  end

  describe Board do
    let(:test_board2) { Board.new([1, 2, 'X']) }
    let(:test_board3) { Board.new(%w['X O X']) }
    describe '#grid_filled?' do
      it 'grid is not completely filled with strings' do
        expect(test_board2.grid_filled?).not_to eql(true)
      end
      it 'grid is completely filled with strings' do
        expect(test_board3.grid_filled?).to eql(true)
      end
    end
end
