# Like string but can not be edited
# not delimited by quotes
# Begin with a colon
# Lowercase, underscore, no spaces

:first_name
person = {
    :first_name => 'Benjamin',
    :last_name => 'Franklin'
}

#This is a symbol
person[:last_name]
# Franklin

# This is a variable
person['last_name']
# nil

#Hash Symbol Shorthand

scores = {:low => 2, :high=>8, :avg=> 6}
scores = {low:2,high:8,avg:6}

scores.keys.first.class
# Symbol