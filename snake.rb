# frozen_string_literal: true

require 'ruby2d'

set background: 'navy'

# width = 640 / 20 = 32
# height = 480 / 20 = 24

GRID_SIZE = 20

# clase
class Snake
  def initialize
    @positions = [[2, 0], [2, 1], [2, 2], [2, 3]]
    @direction = 'down'
  end

  def draw
    @positions.each do |position|
      Square.new(
        x: position[0] * GRID_SIZE,
        y: position[1] * GRID_SIZE, size: GRID_SIZE - 1, color: 'white'
      )
    end
  end

  def move
    case @direction
    when 'down'
      @positions.shift
    end
  end
end
snake = Snake.new

update do
  clear
  snake.move
  snake.draw
end
show
