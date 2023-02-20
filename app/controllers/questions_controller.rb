class QuestionsController < ApplicationController
  def ask;
  end
  def answer
    @answer = if params[:question].downcase.include?('?')
                'What a great question Dan!'
              elsif params[:question].downcase.include?('i am going to work')
                'Really? This is unbelievable!'
              else
                'I don\'t really care Dan... Go and annoy someone else!'
              end
  end
end
