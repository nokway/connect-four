require_relative '../lib/board'
describe BoardClass do
  describe '#place' do
    subject(:board_place) { described_class.new }

    context 'when placing in a position' do
      it 'updates the position dictionary' do
        expected_hash = { 'Red' => [1, 1] }
        expect { board_place.place('Red', [1, 1]) }.to change { board_place.board_hash }.to(expected_hash)
      end
    end
  end
end

# How do we represent the board?
# {
#   "Red" => [1, 1]
# }
# LEts say its x, y so that means that 1, 1 represents 1 on the x axis and 1 on the y axis
# [4, 0, 0, 0, 0]
# [3, 0, 0, 0, 0]
# [2, 0, 0, 0, 0]
# [1, 0, 0, 0, 0]
# [0, 1, 2, 3, 4]
