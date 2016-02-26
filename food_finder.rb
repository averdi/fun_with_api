# require 'pry'
# require 'HTTParty'
# require 'factual'
# factual = Factual.new("qd8habB4vnjoRKFNn6UAaVh12xpdkskpV6AEy5wX", "WPYZFyL5yxICexWW3AtApl3zZpp1i5rs4AAHLKqX")

# puts "Are u hungry? Yes or no?"
# hungry = gets.strip.downcase

# puts "What city are you in?"
# city = gets.strip.capitalize

# if hungry == "yes"
#   def find_restaurant
#     response = HTTParty.get("http://api.v3.factual.com/t/places-us?qfilters={city: #{city}}&KEY=qd8habB4vnjoRKFNn6UAaVh12xpdkskpV6AEy5wX")
#     binding.pry
#   end

#   puts find_restaurant
# else puts "scram."
# end

require 'httparty'
require 'pry'
require 'factual'
factual = Factual.new("qd8habB4vnjoRKFNn6UAaVh12xpdkskpV6AEy5wX", "WPYZFyL5yxICexWW3AtApl3zZpp1i5rs4AAHLKqX")

#factual.table("places-us").schema





puts "Welcome! Are you hungry? Yes or no?"
  hungry = gets.strip.downcase
if hungry == "yes"
  puts "What city and state are you located in? EX: Austin,TX"
  @location = gets.strip.capitalize

def find_restaurant(location)
  @location = location
  response = HTTParty.get("http://api.v3.factual.com/t/restaurants-us?q=#{@location}&KEY=qd8habB4vnjoRKFNn6UAaVh12xpdkskpV6AEy5wX")
  binding.pry
end


  puts find_restaurant(@location)






else puts "Scram!"
end
