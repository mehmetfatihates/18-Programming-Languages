# inject / reduce

(1..5).map {|n| n}

(1..5).inject {|memo,n| memo + n }
#memo = 1 
#memo=memo+2
#memo=memo+3
#memo=memo+4
#memo=memo+5

(1..5).inject {|memo,n| memo + n }
(1..5).inject {|memo,n| memo * n }
(1..5).inject {|memo,n| memo ** n }

fruits=['apple','banana','pear','orange']
longest = fruits.inject do |memo , fruit|
    if fruit.length > memo.length
        fruit
    else
        memo
end