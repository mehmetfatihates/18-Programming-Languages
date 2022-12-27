x = [1,2,3,4,5]
y = x.map {|n| n * 50 }

y= x.map! {|n| n * 50 }


fruits = ['apple','banana','pear']
cap_fruits= fruits.map do |fruit|
    fruit.capitalize if fruit =='pear'
end

cap_fruits = fruits.map do |fruit| 
    fruit == 'pear' ? fruit.capitalize:fruit
end