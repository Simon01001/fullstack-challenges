class SessionsView
  def ask_for(stuff)
    puts "#{stuff}?"
    gets.chomp
  end

  def success(username)
    puts "Welcome #{username}!"
  end

  def wrong_credentials
    puts "Wrong credentials, try again..."
  end
end
