
module Slideable

    HORIZONTAL_VERTICLE_DIRS = [[-1,0],[1,0],[0,-1],[0,1]]
    DIAGONAL_DIRS = [[1,1],[-1,-1],[1,-1],[-1,1]]

    def horizontal_verticle_dirs
        HORIZONTAL_VERTICLE_DIRS
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
        #getter for board & pos
        #while new_pos is valid_pos? and (not occupied):::(not occupied or occupied by the enemy)
            #shovel new_pos into res
            #recalulate new_pos by incrementing new_pos with dx,dy
        # if board.valid_pos?(new_pos) && !board[new_pos].color && board[new_color].color ==   #(give us the piece)

        # end
    def grow_unblocked_moves_in_dir(dx,dy)
        output = []
        new_pos = [pos[0] + dx, pos[1] + dy]

        while rows.valid_pos?(new_pos) && !rows[new_pos].color
            output << new_pos
        end
        output
    end
end
