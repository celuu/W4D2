require "piece"

class Pawn < Piece

    def initialize(color, board, pos)
        super
        @symbol = symbol
    end

    def move
        forward_steps.concat(side_attacks)
    end

    private

    def at_start_row?
        if @symbol == @rows[1][0..7] || @symbol == @rows[6][0..7]
            return true
        else
            return false
        end
    end

    def forward_dir
        self.color == white ? 1 : -1
    end

    def forward_steps
        potential_moves = []
        if !side_attacks && !at_start_row
           x,y = self.pos
           potential_moves << self[x, y+1]
        end
        potential_moves
    end

    def side_attacks
        potential_moves = []
        x,y = self.pos
        if self[x+1, y+1] && self.color != self.color
            potential_moves << self[x+1, y+1]
        elsif self[x-1, y+1] && self.color != self.color
            potential_moves << self[x-1, y+1]
        end
        potential_moves
    end
end
