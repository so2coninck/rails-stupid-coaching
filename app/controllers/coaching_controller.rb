class CoachingController < ApplicationController
  def ask
  end

  def answer
    @answer = coach_answer_enhanced(params[:question])
  end


  private

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.include? "?"
    return "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    return ""
  else
    return "I don't care, get dressed and go to work!"
  end
end





def coach_answer_enhanced(your_message)
  if your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
    return ""
  elsif your_message.upcase == your_message
    return "I can feel your motivation! #{coach_answer(your_message)}"

  else
    coach_answer(your_message)
  end
end

end




