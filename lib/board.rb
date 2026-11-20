# frozen_string_literal: true

# Class for handling board
class BoardClass
  attr_accessor :board_hash

  def initialize
    @board_hash = {}
  end

  def place(color, position_array, board_hash = self.board_hash)
    board_hash[color] = position_array
  end
end
