require_relative "piece.rb"
require_relative "slideable.rb"
class Rook_Bishop_Queen < Piece
    include Slideable
    def move_dirs
        if @row[pos] == 'rook' || @row[pos] == 'queen'
            horizontal_dirs.each do |position|
                if @rows[pos] + position.is_valid?
                    

        elsif @row[pos] == 'bishop'|| @row[pos] == 'queen'





    end
end