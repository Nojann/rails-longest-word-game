class GamesController < ApplicationController

  def new
    @grid = helpers.generate_grid(10)
  end

  def score
    @word = params[:word]
    @score_and_message = helpers.score_and_message(params[:word], params[:grid])
  end
end
