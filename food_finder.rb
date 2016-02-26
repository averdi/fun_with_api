require 'pry'
require 'HTTParty'
require 'factual'
factual = Factual.new("qd8habB4vnjoRKFNn6UAaVh12xpdkskpV6AEy5wX", "WPYZFyL5yxICexWW3AtApl3zZpp1i5rs4AAHLKqX")

def find_restaurant
  response = HTTParty.get("http://api.v3.factual.com/t/places-us?filters={%22category_ids%22:{%22$includes%22:347}}&KEY=qd8habB4vnjoRKFNn6UAaVh12xpdkskpV6AEy5wX")
  binding.pry
end

puts find_restaurant
