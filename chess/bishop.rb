require_relative "Slideable"
require_relative "piece"
class Bishop < Piece
    include Slideable

    def symbol
        'bishop'.color
    end
    private
    def move_dir
        DIAGONAL_DIRS
    end
end
