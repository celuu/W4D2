require 'Singleton'
require "piece"

class NullPiece < Piece
include Singleton

    attr_accessor :color, :symbol

    def moves
    end

end
