array=[2,4,['a','b'],nil,4,'c']
array.length
# 6
array.size
# 6

array.reverse
# ["c",4,nil,["a","b"],4,2]

array.reverse!
# ["c",4,nil,["a","b"],4,2]

array.shuffle
# [4,"c",nil,4,2,["a","b"]]
array.shuffle!
# [4,"c",nil,4,2,["a","b"]]

array.uniq
# [4,"c",nil,2,["a","b"]]
array.uniq!
# [4,"c",nil,2,["a","b"]]

array.compact
# [4,"c",2,["a","b"]]
array.compact!
# [4,"c",2,["a","b"]]

array.flatten
# [4,"c",2,"a","b"]
array
# [4,"c",2,["a","b"]]
array.flatten!
# [4,"c",2,"a","b"]
array
# [4,"c",2,"a","b"]

array.include?(2)
# true
array.include?(1)
#false

array.delete_at(1)
# "c"
array 
# [4,2,"a","b"]

array_delete(4)
# 4
array 
# [2,"a","b"]

[1,2,3,4].join(',')
# 1,2,3,4
[1,2,3,4].join
#1234
[1,2,3,4].join(' - ')
#1 - 2 - 3 - 4
[1,2,3,4].split(',')
# ["1","2","3","4"]

#push
#pop
#shift
#unshift

#ARRAY: ADDITION AND SUBTRACTION

[1,2,3]+[3,4,5]
# [1,2,3,3,4,5]

[1,2,3]-[2]
# [1,3]