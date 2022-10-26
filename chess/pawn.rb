require "piece"

class Pawn < Piece

    def initialize
        @symbol = symbol
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
        
    end


end