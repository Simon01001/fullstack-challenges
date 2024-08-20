def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message == "I am going to work right now!"
    p ""
  elsif your_message.include? "?"
    p "Silly question, get dressed and go to work!"
  else
    p "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  shout = your_message.upcase
    if your_message == shout && your_message != "I AM GOING TO WORK RIGHT NOW!"
      p "I can feel your motivation! #{coach_answer(your_message)}"
    elsif your_message != shout
      p "#{coach_answer(your_message)}"
    elsif your_message == "I AM GOING TO WORK RIGHT NOW!"
      p ""
    end
end
