require 'Singleton'
require "piece"

class NullPiece < Piece
include Singleton

    attr_accessor :color, :symbol

    def initialize
        @color = color
        @symbol = symbol
    end

end
