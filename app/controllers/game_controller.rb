class GameController < ApplicationController
  def game
    @questions = Question.all.sample(10)

    respond_to do |format|
      format.html
      format.json { render json: @questions }
    end
  end
end
