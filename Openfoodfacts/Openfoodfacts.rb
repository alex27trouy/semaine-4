require "open-url"
require "json"

loop do
puts "Entrez un numero de Code Barre:"
bar_code = gets.chomp

url="http://fr.openfoodfacts.org/api/v0/produit/#{barre_code}.json"

json = open(url).read

data= JSON.parse(json)

puts data["product"]["produst_name"]

end
