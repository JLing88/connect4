class ComputerPlayer

  def generate_column
    random_number = rand(1..7)
    case random_number
    when 1
      "A"
    when 2
      "B"
    when 3
      "C"
    when 4
      "D"
    when 5
      "E"
    when 6
      "F"
    when 7
      "G"
    end
  end
end
