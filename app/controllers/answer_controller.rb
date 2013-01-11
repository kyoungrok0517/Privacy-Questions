class AnswerController < ApplicationController
  def create
    @answer = Answer.new(params[:answer])
  
    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: 'Use case was successfully created.'}
        format.json { render json: @answer, status: :created, location: @answer }
      else
        format.html { render action: "new" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end
end
