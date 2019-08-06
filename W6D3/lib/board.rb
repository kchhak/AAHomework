require "byebug"
require "colorize"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new}
    place_stones
  end

  def place_stones
    cups.each_with_index do |cup, i|
      cups[i] = [:stone, :stone, :stone, :stone] unless i == 6 || i == 13  ##why does cup not work?
    end
  end

  def valid_move?(start_pos) #helper method to intialize cups
    raise "Invalid starting cup" if !start_pos.between?(0,13)
    raise "Starting cup is empty" if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    if current_player_name == @name1
      other_store = 13
      own_store = 6
    else
      other_store = 6
      own_store = 13
    end

    stones = cups[start_pos]
    @cups[start_pos] = []

    next_cup = start_pos
    until stones.empty?
      next_cup += 1
      next_cup = 0 if next_cup > 13

      unless next_cup == other_store
        @cups[next_cup] << stones.pop
      end
    end
    
    render
    next_turn(next_cup)
  end

  def next_turn(ending_cup_idx) # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif cups[ending_cup_idx].length == 1
      :switch
    else 
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    left_side = cups[1...6]
    right_side = cups[7..12]

    return left_side.all?{|cup| cup.empty?} || right_side.all?{|cup| cup.empty?}
  end

  def winner
    if cups[6].length > cups[13].length
      return @name1
    elsif cups[6].length < cups[13].length 
      return @name2
    else
      return :draw
    end
  end
end
