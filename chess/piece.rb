require_relative "board.rb"

class Piece
    def initialize(piece)
        @piece = piece
        @board = Board.new
        @pos = []
    end
end


#slidable:diag,horiz,vert, both (bishop, rook, queen)
#stepable

#move_dir
#moves calls move_dir

#track pos
#hold reference to the board



#null_piece class, include singleton, no arg in initialize, read color, & symbol

#pawn class, at_start_row?, forwards_steps, side_attacks, symbol, moves
#forward_dir:returns 1 or -1, forward_steps, side_attacks
