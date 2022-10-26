
module Slideable

    HORIZONTAL_DIRS = [[-1,0],[1,0],[0,-1],[0,1]]
    DIAGONAL_DIRS = [[1,1],[-1,-1],[1,-1],[-1,1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end
    
    def move_dirs
        raise 'Not Implemented'
    end

    def moves
        moves = []
        self.move_dirs.each do |x, y|
            moves.concat(grow_unblocked_moves_in_dir(x, y))
        end
        moves
        # iterate through move_dirs
        # call gubmid on each direction
        # concat output of that function to moves
        # return moves
    end

    def grow_unblocked_moves_in_dir(dx,dy)
        output = []
        while self[pos].nil?
            output << [dx, dy]
        end
        output
    end

end