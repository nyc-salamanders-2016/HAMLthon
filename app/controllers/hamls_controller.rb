class HamlsController < ApplicationController
  def index
    number_of_times = (1...100).to_a
    colors = number_of_times.map { |number| Faker::Color.color_name }
    words = number_of_times.map { |number| Faker::Hacker.ingverb }
    @color_words = colors.zip(words)
  end
end
