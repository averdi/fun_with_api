require 'httparty'
require 'pry'
require 'factual'
factual = Factual.new("qd8habB4vnjoRKFNn6UAaVh12xpdkskpV6AEy5wX", "WPYZFyL5yxICexWW3AtApl3zZpp1i5rs4AAHLKqX")

#factual.table("places-us").schema





    puts "Welcome! Are you hungry? Yes or no?"
      hungry = gets.strip.downcase
    if hungry == "yes"
         puts "What city are you in?"
      @city = gets.strip.capitalize
        puts "What state are you in?"
      @state = gets.strip.upcase

       def find_restaurant(city, state)
      @city = city
      @state = state
      response = HTTParty.get("http://api.v3.factual.com/t/restaurants-us?q=#{@city}, #{@state}&limit=10&KEY=qd8habB4vnjoRKFNn6UAaVh12xpdkskpV6AEy5wX")
      restaurants_array = response["response"]["data"]

      restaurants_array.map do |rest_hash|
        name = rest_hash["name"]
        address = rest_hash["address"]
        # cuisine = rest_hash["cuisine"]
        puts "Try #{name}, located at #{address}"
      end


      end


      puts find_restaurant(@city, @state)

#goals for after lunch:
#display rest name, address, cuisine, alc yes/no
#make it display nicely
#make the restaurants display numerically
#bonus: figure out how to get it to display top 10 by ranking
#BONUS: loop to ask for different ones





    else puts "Scram!"
    end








