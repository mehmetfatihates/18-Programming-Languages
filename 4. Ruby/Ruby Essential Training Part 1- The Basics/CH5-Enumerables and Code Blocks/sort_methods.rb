array = [5,8,2,6,1,3]

array.sort {|v1,v2| v1 <=> v2}
# 1,2,3,5,6,8
array.sort {|v1,v2| v2 <=> v1}
# 8,6,5,3,2,1

fruits = ['banana','apple','pear']
fruits.sort do |fruit1,fruit2|
    fruit1 <=> fruit2.length
end
# pear , apple , banana


fruits.sort_by {|fruit| fruit.length}
# pear , apple , banana



