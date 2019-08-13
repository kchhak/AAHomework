#['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
#=> "fiiiissshhhhhh"


def sluggish_octopus(fish)
  fish.each_with_index do |fish1, i|
    biggest_fish = true
    fish.each_with_index do |fish2, j|
      biggest_fish = false if fish2.length > fish1.length
    end
  end

  return fish1 if biggest_fish
end

def dominant_octopus(fish)
  prc = Proc.new {|x,y| y.length <=> x.length}
  fish.merge_sort(&prc).first
end


class Array
  def merge_sort(&prc)
    return self.dup if length <= 1

    mid = length/2
    left = self[0...mid]
    right = self[mid..-1]

    sorted_left = left.sort(&prc)
    sorted_right = right.sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      else
        merged << right.shift
      end
    end
    merged + left + right
  end
end

def clever_octopus(fish)
  biggest_fish = fish.first
  fish[1..-1].each do |fish|
    biggest_fish = fish if fish.length > biggest_fish.length
  end
  biggest_fish
end


tiles_array = ["up", "right-up", "right", "right-down", 
              "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles)  ## uses tile array
  tiles.each_with_index do |tile, i|
    return i if tile == dir
  end
end

tiles_hash = Hash.new(0)

tiles_array.each_with_index do |tile, i|
  tiles_hash[tile] = i
end

def constant_dance(dir, tiles)  ## uses tile hash
  tiles_hash[dir]
end

