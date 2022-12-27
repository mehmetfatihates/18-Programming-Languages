(1..10).find {|n| n==5 }

(1..10).find {|n| n%3 == 0 }

(1..10).detect {|n| n%3 == 0 }

fruits = ['apple', 'banana', 'pear']
fruits.find {|fruit| fruit.length>5}


pantry = {
    'apple'=> 0,  
    'banana' => 1,
    'pear'=>0 }
pantry.find {|k,v| v==5 }

(1..10).find_all {|n| n%3 == 0}
(1..10).select {|n| n%3 == 0}
(1..10).any? {|n| n<=5 }
(1..10).none? {|n| n<=5 }
(1..10).all? {|n| n<=5 }
(1..10).one? {|n| n<=5 }
(1..10).one? {|n| n==5 }

numbers = [*1..10]
numbers.delete_if{|n| n<=5}

numbers = [*1..10]
even = numbers.delete_if {|n| n%2 == 1}
