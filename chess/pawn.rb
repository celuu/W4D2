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
        #trying to figure out what dir
        #depends on color
        #black one dir, white - 1
        
    end

    def forward_steps
    end

    def side_attacks
    end

end
