# STRINGS: ESCAPING

"Let's escape!"

# 'Let's escape!'
'Let\'s escape!'

"I said, \"Let's escape!\"" 

'I said, Let\'s escape!'

# STRINGS: CONTROL CHARACTERS

#\t = tab
#\n=new line

puts "\ta\tb\nc\n\td"
#   a   b
# c 
#   d

puts '\ta\tb\nc\n\td'
# "\ta\tb\nc\n\td"

# STRINGS: INTERPOLATION

msg=" I love you"
puts "I just called to say: #{msg}."
# "I just called to say: I love you."

puts "1+1 = #{1+1}"
# "1+1 = 2"

puts "I just called to say: #{msg.upcase}."
# "I just called to say: I LOVE YOU."

