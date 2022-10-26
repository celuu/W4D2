require_relative "Slideable"
require_relative "piece"
class Rook < Piece
    include Slideable
    def move_dir
        HORIZONTAL_VERTICLE_DIRS
    end
end
