inclusive= 1..10
inclusive.class
#Range

exclusive = 1...10

inclusive.begin
#1
inclusive.first
#1
inclusive.end
#10
exclusive.begin
#1
exclusive.first
#1
exclusive.end
#10

array = [*inclusive]
#[1,2,3,4,5,6,7,8,9,10]

alpha = 'a'..'m'
#"a".."m"

alpha.class
#Range

alpha.include?('g')
#true

array=[*alpha]
#["a","b","c"........"m"]
