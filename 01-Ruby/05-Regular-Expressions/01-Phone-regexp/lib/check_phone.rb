def french_phone_number?(phone_number)
  # TODO: true or false?
  regex_phone_number = /^(0[^0]( ?\d){8})|(\+33 ( ?\d){8,9})$/
  if regex_phone_number.match(phone_number.gsub(/[^\+\d\s]/, ""))
    return true
  else
    false
  end
end
