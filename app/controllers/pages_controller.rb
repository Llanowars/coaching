class PagesController < ApplicationController
  def coach
  end

  def answer
    @answer = params[:text]
    @coach_answer = coach_answer(@answer)
  end
end


def coach_answer(answer)
  if answer.include?("?")
    return "Silly question, get dressed and go to work!"
  elsif answer == "I am going to work right now!"
    return ""
  else
    return "I don't care, get dressed and go to work!"
  end
end

# def coach_answer_enhanced(your_message)
#   if your_message.include?("?")
#     return "I can feel your motivation! Silly question, get dressed and go to work!"
#   elsif your_message == "I AM GOING TO WORK RIGHT NOW!"
#     return ""
#   else
#     return "I can feel your motivation! I don't care, get dressed and go to work!"
#   end
# end

