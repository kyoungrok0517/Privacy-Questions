class GameController < ApplicationController
  def game
    @questions = Question.all.sample(10)
    @username = session[:username]
    @user_id = session[:user_id]

    respond_to do |format|
      format.html
      format.json { render json: @questions }
    end
  end
end
