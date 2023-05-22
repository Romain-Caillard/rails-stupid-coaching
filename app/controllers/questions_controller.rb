class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = ''
    @question = params[:question]
    if @question == 'I am going to work right now!'
      @response = 'Great!'
    elsif @question[-1] == '?'
      @response =  'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
