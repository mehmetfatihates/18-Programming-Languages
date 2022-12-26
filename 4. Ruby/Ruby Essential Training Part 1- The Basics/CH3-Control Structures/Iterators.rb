# 5.times {puts "Hello"}
# 1.upto(5) {puts "Hello"}
# 5.downto(1) {puts "Hello"}
# (1..5).each {puts "Hello"}

i = 5
i.times do 
    puts "Countdown #{i}"
end

i = 5 do |i|
i.times do 
    puts "Countdown #{i}"
end

5.downto(1) {|i| puts "Countdown #{i}"}

fruites = ['banana', 'apple', 'pear']

fruites.each do |fruites|
    puts fruites.capitalize
end