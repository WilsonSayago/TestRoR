USERS = [
  {name: "Juan", country: "Chile", age: 30},
  {name: "Pedro", country: "Argentina", age: 15},
  {name: "Manuel", country: "Perú", age: 26},
  {name: "Jose", country: "Ecuador", age: 22},
]
puts "===========Arreglo USERS original============================="
puts USERS
puts "========Arreglo USERS ordenado alfabeticamente por pais======="
puts USERS.sort_by { |k| k[:country] }
puts "===========Usuario con menor edad en el arreglo USERS========="
puts USERS.sort_by { |k| k[:age] }.first[:name]
