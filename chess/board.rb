require_relative "piece.rb"



class Board
include Slideable
    attr_accessor :rows
    def initialize
        @rows = Array.new(8){Array.new(8)}
        @rows[0][0] = Piece.new('rook')
        @rows[0][7] = Piece.new('rook')
        @rows[7][0] = Piece.new('rook')
        @rows[7][7] = Piece.new('rook')
        @rows[0][1] = Piece.new('knight')
        @rows[0][6] = Piece.new('knight')
        @rows[7][1] = Piece.new('knight')
        @rows[7][6] = Piece.new('knight')
        @rows[0][2] = Piece.new('bishop')
        @rows[0][5] = Piece.new('bishop')
        @rows[7][2] = Piece.new('bishop')
        @rows[7][5] = Piece.new('bishop')
        @rows[0][3] = Piece.new('queen')
        @rows[7][3] = Piece.new('queen')
        @rows[0][4] = Piece.new('king')
        @rows[7][4] = Piece.new('king')
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, value)
        row, col = pos
        @rows[row][col] = value
    end

    def valid_pos?(pos)
        row, col = pos
        pos.all? do |i|
            i > 0 && i < @rows.length
        end
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos].nil?
            raise "there is no piece at starting position"
        end
        if !self[end_pos].nil?
            raise "piece cannot move to end position"
        end

        self[start_pos],self[end_pos] = self[end_pos],self[start_pos]
    end

end
