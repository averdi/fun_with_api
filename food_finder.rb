require 'httparty'
require 'pry'
require 'factual'
@factual = Factual.new("bUMyTdtg1t1dEPgp4fsDtDlr2Em5w73ejSDOym3w", "fsANcB1KVoGnXNXv2NeJrqDw80QuRotGRZt4OJ8E")
# factual.table("places-us").schema





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
      # response = HTTParty.get("http://api.v3.factual.com/t/restaurants-us?q=#{@city}, #{@state}&sort=placerank:desc&limit=10&KEY=bUMyTdtg1t1dEPgp4fsDtDlr2Em5w73ejSDOym3w")
      # restaurants_array = response["response"]["data"]

      restaurants_array = @factual.table("restaurants-us").filters("$and" => [{"locality" => {"$eq" =>@city}}, {"region" => {"$eq" => @state}}]).rows[0..9]

      i = 1
      restaurants_array.map do |rest_hash|
        name = rest_hash["name"]
        address = rest_hash["address"]
        # cuisine = rest_hash["cuisine"]
        puts "#{i} #{name}, located at #{address}"
        puts "-" * 65
        i += 1
        i <=102
      end


      end


      puts find_restaurant(@city, @state)

#goals for after lunch:
#display rest name, address, cuisine, alc yes/no
#make the restaurants display numerically
#BONUS: loop to ask for different ones





    else puts "Scram!"
    end








