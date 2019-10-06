# frozen_string_literal: true

require 'ruby2d'

on :controller_button_down do |event|
  # A controller button was pressed
  puts event.button
end

show
