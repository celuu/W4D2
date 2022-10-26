# if @row[pos] == 'rook' || @row[pos] == 'queen'
#     horizontal_dirs.each do |position|
#         if @rows[pos] + position.is_valid?

#         end
# elsif @row[pos] == 'bishop'|| @row[pos] == 'queen'

# end






require_relative "piece.rb"
require_relative "slideable.rb"
class Rook_Bishop_Queen < Piece
    include Slideable
    def symbol
        'queen'.color
    end

    private

    def move_dirs
        HORIZONTAL_VERTICLE_DIRS
        DIAGONAL_DIRS
    end
end
