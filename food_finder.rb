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
        puts "What state are you in (by abbreviation)?"
      @state = gets.strip.upcase

       def find_restaurant(city, state)
      @city = city
      @state = state

      restaurants_array = @factual.table("restaurants-us").filters("$and" => [{"locality" => {"$eq" =>@city}}, {"region" => {"$eq" => @state}}]).rows[0..9]

      puts "The top ten restaurants in #{@city} are...\n\n"
      i = 1
      restaurants_array.map do |rest_hash|
        name = rest_hash["name"]
        address = rest_hash["address"]
        puts "#{i}. #{name}, located at #{address}"
        puts "-" * 65
        i += 1
        if i >10
            return " "
        end
      end


      end


      puts find_restaurant(@city, @state)

#goals
#get cuisine selection to be an option
#BONUS: loop to ask for different ones





    else puts "Scram!"
    end








