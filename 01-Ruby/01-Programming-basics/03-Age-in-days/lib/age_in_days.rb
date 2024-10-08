# This "require" line loads the contents of the "date" file from the standard
# Ruby library, giving you access to the Date class.
require "date"

def age_in_days(day, month, year)
  # TODO: return the age expressed in days given the day, month, and year of birth
  birth = DateTime.new(year, month, day)
  today = DateTime.now
  calculated_age = (today - birth).to_i
  return calculated_age
end
