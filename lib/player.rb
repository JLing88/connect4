class Player

  attr_accessor :name

  def initialize(name = 'Player')
    @name = name
  end

  def get_name
    print "What is your name? "
    @name = gets.chomp
  end
end
