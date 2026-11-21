# frozen_string_literal: true

require 'byebug'
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
    board_hash.each_value do |val|
      return true if val == [x_val, y_val]

      return false
    end
  end

  def get_item(value, hash = board_hash)
    hash.key(value)
  end

  private

  def display
    # byebug
    arr = []
    (1..6).each do |e|
      (1..7).each do |f|
        if exists?(f, e)
          arr.push(get_item([f, e]))
          next
        elsif exists?(f, e) == false
          arr.push([f, e])
        end
      end
    end
  end
end

b = BoardClass.new
b.place('Red', [1, 1])
b.display
