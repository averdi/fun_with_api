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
      response = HTTParty.get("http://api.v3.factual.com/t/restaurants-us?q=#{@city}, #{@state}&KEY=qd8habB4vnjoRKFNn6UAaVh12xpdkskpV6AEy5wX")
      binding.pry
      end


      puts find_restaurant(@city, @state)





    else puts "Scram!"
    end








