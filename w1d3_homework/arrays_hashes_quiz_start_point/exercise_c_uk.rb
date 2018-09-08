united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
#solution based on coursework
united_kingdom[1][:capital] = "Cardiff"
#my way
united_kingdom.each{|country_details, value|
  country_details.each{|heading, details|
    if details == "Swansea"
      details = "Cardiff"
    end
  }

  }

# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).

united_kingdom.push(name: "Northern Ireland", population: 1811000, capital: "Belfast")

p united_kingdom
# 3. Use a loop to print the names of all the countries in the UK.
united_kingdom.each{|country_details, value|
  country_details.each{|heading, details|
      if heading == :name
        p details
      end
    }
}

# 4. Use a loop to find the total population of the UK. same as above but sum it?


total_population = 0
united_kingdom.each{|country_details, value|
  country_details.each{|heading, details|

    if heading == :population
      total_population += details.to_i
    end
    }
  }
  p "The total population of the UK is #{total_population}"
