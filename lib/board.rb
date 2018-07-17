class Board

  attr_accessor :grid,
                :current_slot_index

  def initialize
    @grid = [
      ['A', 'B', 'C', 'D', 'E', 'F', 'G'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
    ]

    @current_slot_index = {
      "A" => 6,
      "B" => 6,
      "C" => 6,
      "D" => 6,
      "E" => 6,
      "F" => 6,
      "G" => 6
    }
  end

  def print_board
    joined_rows = @grid.map do |row|
      row.join
    end
    joined_rows.join("\n")
  end

  def valid_move?(column)
    @current_slot_index[column] >= 1 && ["A","B","C","D","E","F","G"].include?(column)
  end

  def process_move(input_column, current_player)
    if valid_move?(input_column)
      case input_column
        when "A"
          grid[current_slot_index[input_column]][0] = current_player.piece_icon
        when "B"
          grid[current_slot_index[input_column]][1] = current_player.piece_icon
        when "C"
          grid[current_slot_index[input_column]][2] = current_player.piece_icon
        when "D"
          grid[current_slot_index[input_column]][3] = current_player.piece_icon
        when "E"
          grid[current_slot_index[input_column]][4] = current_player.piece_icon
        when "F"
          grid[current_slot_index[input_column]][5] = current_player.piece_icon
        when "G"
          grid[current_slot_index[input_column]][6] = current_player.piece_icon
      end
      current_slot_index[input_column] -= 1
    else
      puts "Invalid column! Please try again: "
      
    end
  end
end
