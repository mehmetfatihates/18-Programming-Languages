colors = "RRGGBBYYKK"
lines = 20

count = 0
while count < lines
    start = count.modulo(colors.length)
    first_half = colors[start..-1]
    second_half = colors[0...start]
    puts first_half + second_half
    count +=1
end

# second solution
colors = "RRGGBBYYKK"
lines = 20

lines.times do |i|
    first = colors[0]
    rest = colors[1..-1]
    colors = rest + first
    puts colors
end

#third solution
colors = "++*~~*++*"
lines = 20

colors_array = colors.split('')
1.upto(lines) do |i|
    first = colors_array.shift
    colors_array << first
    puts colors_array.join
end