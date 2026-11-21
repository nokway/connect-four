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

  private

  def make_rows
    array = []
    (1..6).each do |_e|
      array.push([1, 2, 3, 4, 5, 6, 7])
    end
    array
  end

  def display(current_player)
    # Loop where we have 6 rows 7 times
    # in the inner 6 times loop we search the board array for a value which has this items x, and y value (inner loop index, outerloop index)
    # we display the item; if there is none we display the inner loop index
  end
end
