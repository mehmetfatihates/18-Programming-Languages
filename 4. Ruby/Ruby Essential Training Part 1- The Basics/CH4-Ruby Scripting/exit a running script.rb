# Automatically, after the last line of code
# exit, exit !
# abort( msg )
#Type <control> +c

fruits = ['banana','apple','pear']

fruits.each do |fruit|
    if fruit == 'apple'
        # break
        # exit
        # exit!
        #abort("exit  on apple")
        #redo 
        # ctrl+c
    end
    puts fruit.capitalize
end

puts "Total fruits: #{fruits.count}"
