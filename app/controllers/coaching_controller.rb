class CoachingController < ApplicationController

  def ask
  end

  def answer
    @answer = params[:text]
    @coach_answer = coach_answer(@answer)
  end

  private

  def coach_answer(your_message)
    if your_message.include?("?")
      return "I can feel your motivation! Silly question, get dressed and go work" 
    elsif your_message == "I am going to work"
      return "Great!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
