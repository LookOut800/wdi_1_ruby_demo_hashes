require 'date'

# Given this hash as an example of person's employment info.
alice_jones = {
  name: 'Alice Jones',
  dob: Date.new(1977,6, 23),
  email_address: "alice@com.com",
  address: {
    street: '502 Main St.',
    city: 'Newton',
    state: 'MA',
    zip_code: '01345'
  },
  employment_history: [
                       {
                         name: "Whoatemycereal.com",
                         title: "Rails Developer",
                         contact: '978 867-5309',
                         manager: "Gonzo Smith",
                         start_date:  Date.new(2013,12,20),
                         end_date:  Date.new(2014,6, 25),
                         yearly_salary: 75_000
                       },
                       {
                         name: "Dunkin Donuts",
                         title: "Donut Maker",
                         contact: '978 453-5680',
                         manager: "Joe Conway",
                         start_date:  Date.new(2011,8,13),
                         end_date:  Date.new(2013,1, 3),
                         yearly_salary: 16_000
                       },
                       {
                         name: "Google",
                         title: "CEO",
                         contact: '413 958-8909',
                         manager: "God Himself",
                         start_date:  Date.new(2008,3,1),
                         end_date:  Date.new(2011,1, 9),
                         yearly_salary: 5_450_000
                       }

                      ]
}

# Show the first company Alice worked for.
first_company = alice_jones[:employment_history].last[:name]
puts "Alice Jones first company was #{first_company}"

# NOTE: The companies in employment_history are ordered by
# by most to least recent jobs.

# Show the last company Alice worked for.

p alice_jones[:employment_history].first[:name]

# Show the most recent job's manager.
p alice_jones[:employment_history].first[:manager]

# Change this managers name and show it.

alice_jones[:employment_history].first[:manager] = "Jonny"
p alice_jones[:employment_history].first[:manager]

#  Show the Alice's street address
p alice_jones[:address]
# Change the name of the most recent company alice worked for. And
# change her position to "Javascript Developer"

# print out alice's email address.


# Calculate and show the number of days alice worked at each company
# number of days is (end_date - start_date).to_i
days = alice_jones[:employment_history].map {|job| (job[:end_date] - job[:start_date])}#.reduce.to_i
p days
#alice_jones[:employment_history].
# What's alice's wage history?

# Poor Alice took quite a pay cut. What the max, min and largest pay cut?
# Use Array#map


