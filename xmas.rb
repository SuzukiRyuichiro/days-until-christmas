require "date"

def days_until_xmas(some_day = Date.today) # if no argument is given, default to today
  # some_day is any date i.e. Date.new(2024, 12, 26)
  year_of_some_day = some_day.year # i.e. 2024
  christmas = Date.new(year_of_some_day, 12, 25) # => xmas of 2024
  # check if some_day is before the xmas of that year
  if some_day > christmas
    # if it is, get the xmas date for the next year
    next_year = year_of_some_day + 1
    christmas = Date.new(next_year, 12, 25)
  end

  difference = christmas - some_day
  return difference.to_i
end

puts days_until_xmas == 335 # Difference between today and xmas 2023
puts days_until_xmas(Date.new(2024, 12, 24)) == 1
puts days_until_xmas(Date.new(2024, 12, 25)) == 0
puts days_until_xmas(Date.new(2012, 12, 26)) == 364
