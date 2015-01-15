# Ar Array of Hashes where each hash entry is going to be for a stooge.
# Each stooge will have a name, DOB, gender and address.
# Each address will have a street, ciyty, state, zip.
require 'Date'

stooges = [
  {
    name: "Moe Howard",
    dob: Date.parse("June 4, 1922"),
    gender: :male,
    address: {
      street: "33 main",
      city: "Boston",
      zip: "01897"
    }
  },
   {
    name: "Larry Fine",
    dob: Date.parse("May 5, 1925"),
    gender: :male,
    address: {
      street: "44 main",
      ciy: "Boston",
      zip: "012345"
    }
   },
   {name: "Larry Fine",
    dob: Date.parse("May 5, 1925"),
    gender: :male,
    address: {
      street: "44 main",
      city: "Boston",
      zip: "012345"
    }
   }
]

# stooge_zip = stooges.each_with_object([]) { |k, a| a << k[:address][:zip]}.uniq

# p "The stoogey zips are #{stooge_zip}"


zipcodes = []
stooges.each do |guy|
  zipcodes << guy[:address][:zip]
end
p "the stoog zipcodes are #{zipcodes.uniq}"
