require_relative "Slideable"
require_relative "piece"
class Bishop < Piece
    include Slideable
    def move_dir
        DIAGONAL_DIRS
    end
end
