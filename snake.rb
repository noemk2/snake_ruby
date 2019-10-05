# frozen_string_literal: true

require 'ruby2d'

set background: 'navy'

# width = 640 / 20 =32
# height = 480 / 20 = 24
GRID_SIZE = 20

class Snake
  def initialize
    @positions = [[2, 0], [2, 1], [2, 2], [2, 3]]
  end

  def draw
    @positions.each do |_position|
      Square.new(x: position[0] * GRID_SIZE, size: GRID_SIZE, color: 'white')
    end
  end
end

snake = Snake.new
snake.draw
show
