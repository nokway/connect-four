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

  def exists?(x_val, y_val, board_hash = self.board_hash)
    board_hash.each_with_index do |_elm, index|
      return true if index == [x_val, y_val]

      false
    end
  end

  def get_item(value, hash = board_hash)
    hash.key(value)
  end

  # private

  def display
    arr = []
    (1..6).each do |e|
      (1..7).each do |f|
        if exists?(f, e)
          arr.push(get_item([f, e]))
        else
          arr.push('hi')
        end
      end
    end
    p arr
    # Loop where we have 6 rows 7 times
    # in the inner 6 times loop we search the board array for a value which has this items x, and y value (inner loop index, outerloop index)
    # we display the item; if there is none we display the inner loop index
  end
end

b = BoardClass.new
b.place('Red', [1, 1])
b.display
