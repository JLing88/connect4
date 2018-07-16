class Board

  attr_accessor :grid, :current_slot_index

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
    @current_slot_index[column] > 1 && ["A", "B", "C", "D", "E", "F", "G"].include?(column)
  end

  def process_move(input_column)
    if valid_move?(input_column)
      case input_column
      when "A"
        grid[current_slot_index[input_column]][0] = "X"
      when "B"
        grid[current_slot_index[input_column]][1] = "X"
      when "C"
        grid[current_slot_index[input_column]][2] = "X"
      when "D"
        grid[current_slot_index[input_column]][3] = "X"
      when "E"
        grid[current_slot_index[input_column]][4] = "X"
      when "F"
        grid[current_slot_index[input_column]][5] = "X"
      when "G"
        grid[current_slot_index[input_column]][6] = "X"
      end
      current_slot_index[input_column] - 1
    end
  end
end
