require_relative "board.rb"

class Piece
    attr_accessor :color, :board, :pos
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = []
    end

    def to_s(arg)
        arg.to_s
    end

    def empty?
        nil?
    end

    def valid_moves
        row, col = pos
        pos.all? do |i|
            i > 0 && i < @rows.length
        end
    end

    def pos=(value)
        self[pos] = value
    end

    # private

    # def move_into_check?(end_pos)
        
    # end

end
