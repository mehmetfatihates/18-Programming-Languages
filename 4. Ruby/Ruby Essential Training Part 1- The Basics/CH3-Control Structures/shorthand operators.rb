count = 2

puts count == 1 ? "#{count} person" : "#{count} people"

DEFAULT_LIMIT = 100
limit = nil 
#limit = 70

max = limit || DEFAULT_LIMIT
# max is 70

puts max

limit ||=DEFAULT_LIMIT

puts limit

limit = DEFAULT_LIMIT unless limit

puts "Are you lonely" if count == 1

