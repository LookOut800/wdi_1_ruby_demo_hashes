# Create an empty Hash
stooges = {}
# The Hash will have entries for key-value pairs
stooges = {
  moe: "Moe Howard",
  larry: "Larry Fine",
  curly: "Curly Howard"
}

puts stooges

puts stooges[:larry] #gets the value for the key :larry

stooges[:Joe] = "Joe Shmoe" #added an entry,
#           key-value pair, for joe
puts stooges
puts stooges.keys

puts stooges.keys.class # you can always call
  #the .class method to find the datatype of an object.

stooges.delete(:joe) #deletes joe, didnt like him

stooges.each do |key, value|
  puts "k/v = #{key}/#{value}"
end

# We note that a value can be any type, or Ruby class
stooges[:ages] = [32, 28, 44]

larry_age = stooges[:ages][1]
puts "Larry is #{larry_age} years old"

# Add addresses for stooges.
# Each address is a Hash that has entries for a street, city and country

stooges[:larry] = {street: "birch",
  city: "Boston",
  country: "USA"
}

puts "Larry lives in the city of #{stooges[:larry][:city]}"

# Can I search WITH the value, say "Boston" instead of with the Key, i.e :city
