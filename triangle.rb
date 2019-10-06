# frozen_string_literal: true

require 'ruby2d'
# set(title: 'Hello World!')
# set title: 'Hello World!'
# set background: 'blue'

# set title: 'HolaMundo', background: 'navy'
# set fullscreen: true

# tick = 0

# update do
# set background: 'random' if tick % 60 == 0
# tick += 1
# end

# t = Time.now

# update do
# Close the window after 5 seconds
#  close if Time.now - t > 5
# end

# Define a square shape.
@square = Square.new(x: 10, y: 20, size: 25, color: 'blue')
# set fullscreen: true
# Define the initial speed (and direction).
@x_speed = 0
@y_speed = 0

# Define what happens when a specific key is pressed.
# Each keypress influences on the  movement along the x and y axis.
on :key_down do |event|
  if event.key == 'a'
    @x_speed = -2
    @y_speed = 0
  elsif event.key == 'd'
    @x_speed = 2
    @y_speed = 0
  elsif event.key == 'w'
    @x_speed = 0
    @y_speed = -2
  elsif event.key == 's'
    @x_speed = 0
    @y_speed = 2
  end
end

update do
  @square.x += @x_speed
  @square.y += @y_speed
end

show
