require_relative '../lib/player'
require_relative '../lib/board'

RSpec.describe Player do
  describe 'initialize' do
    it 'initializes player variables' do
      expect(@p1_array).to eq(nil)
    end
    it 'does not add a value to variable' do
      expect(@p2_array).to eq(nil)
    end
  end
end

RSpec.describe Board do
  @board = Board.new
  describe 'board' do
    it 'initializes the board' do
      expect(@board).to eq(nil)
    end
    it 'does not print the board' do
      expect(@board).to eq(nil)
    end
  end
end
