class PagesController < ApplicationController
  def question
  end

  def answer
    @question = params[:question]
    @answer = check(@question)
  end
  def check(question)
    if question == 'I am going to work'
      'Great!'
    elsif question[-1] == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

end

