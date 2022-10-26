
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
        move_dirs.each do |x, y|
            moves.concat(grow_unblocked_moves_in_dir(x, y))
        end
        moves
        # iterate through move_dirs
        # call gubmid on each direction
        # concat output of that function to moves
        # return moves
    end

    private

    def grow_unblocked_moves_in_dir(dx,dy)
        output = []
        new_pos = [pos[0] + dx, pos[1] + dy]

        while rows.valid_pos?(new_pos) && !rows[new_pos].color
            output << new_pos
            

        end
        #while loop to check if new_pos is in bound
        #not occupied and not occupied by enemy
        #shovel new_pos into result arr
        #recalculate the new position
        #increment dx, dy by one
        output
    end

end