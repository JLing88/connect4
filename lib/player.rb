class Player

  attr_accessor :name
  attr_reader   :piece_icon

  def initialize(name = 'Player')
    @name = name
    @piece_icon = "X" 
  end

  def get_name
    print "What is your name? "
    @name = gets.chomp
  end
end
