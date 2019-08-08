require "colorize"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message && @sequence_length += 1 unless game_over
    sleep(1)
    system("clear")
  end

  def show_sequence
    puts "Here it comes!"
    sleep(1)
    system("clear")
    add_random_color
    seq.each do |color| 
      puts colored(color)
      sleep(2)
      system("clear")
    end
  end

  def colored(color)
    if color == "blue"
      color.blue
    elsif color == "yellow"
      color.yellow
    elsif color == "green"
      color.green
    elsif color == "red"
      color.red
    end
  end

  def require_sequence
    puts "Repeat the sequence by typing the colors, separated with a space"
    input = gets.chomp.split
    seq.each_with_index do |color, i|
      if input[i] != color
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Wow you got it!"
  end

  def game_over_message
    puts "Too bad."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
