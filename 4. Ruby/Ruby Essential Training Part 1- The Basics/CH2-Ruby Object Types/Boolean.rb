x = 1
x == 1
#true
x != 1
#false
true.class
#TrueClass
false.class
#FalseClass
x<3
#true
x>3
#false
x < 0 && x >100
# false
x >=100 || x <= 50
# true
!x
#false
[1,2,3].include?(2)
#true
x.nil?
#false
2.between?(1,5)
#true
[1,2,3].empty?
#false

hash = {'a'=> 1}
hash.has_key?('a')
#true
hash.has_key?(:a)
#false
hash.has_value?('1')
# true
hash.has_value?(4)
#false
