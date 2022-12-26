# Hashes

#Like a labeled, hanging file folder
#Order not important
#Find items by key, not position
#Hash keys must be unique

car = ['Ford', 'Mustang', 'blue', 'tan']
car = {
    'brand' => 'Ford',
    'model' => 'Mustang',
    'color' => 'blue',
    'interior_color' => 'tan'
}

puts car['model']
# Mustang

car['color']='green'

puts car['color']
# green

car.length
# 4

car.size
# 4

car.to_a
[['brand','Ford'],['model','Mustang']...]

