def valid?(email)
  # TODO: return true if the email is valid, false otherwise
  require 'uri'
  regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  if email =~ regex
    return true
  else
    return false
  end
end

def clean_database(emails)
  # TODO: return an array with the valid emails only
  list = []
  regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  emails.each do |e|
    if e =~ regex
      list << e
    end
  end
  return list
end

def group_by_tld(emails)
  # TODO: return a Hash with emails grouped by TLD
  regex = /[a-z]+\z/
  h = {}
  emails.each do |i|
    h[i.match(regex).to_s] = i.split
  end



  #emails.each { |e| h[e] = e }
  puts h
  return h


end

emails = [
  "thomasgmail.com",
  "kevin@yahoo.fr",
  "edward@gmail.fr",
  "elsa@",
  "julien@mdn.fr",
  "dimitri@berlin.de"
]
group_by_tld(emails)
def compose_mail(email)
  # TODO: return a Hash with username, domain and tld extracted from email
end

def compose_translated_email(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  # TODO: translate subject, body, closing and signature, according to TLD
end
