loop do 
    # ... 
end

# break 
# next
# redo
# retry

while boolean
    # ...
end

until boolean
    # ... 
end


i = 5
loop do
    break if i == 0
    puts "Countdown: #{i}" 
    i -=1
end
puts "Blast off!"



while i>0
    puts "Countdown: #{i}" 
    i -=1
end
puts "Blast off!"



cart = ['apple','banana','carrot']
until cart.empty?
    first = cart.shift
    puts first.upcase
end