# INGREDIENTS

# require 'open-uri'
# require 'json'

# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# ingredients = JSON.parse(open(url).read)
# ingredients["drinks"].each do |ing|
#   Ingredient.create!(name: ing["strIngredient1"])
# end

# COCKTAILS

# require 'faker'

# 10.times do
#   category = %w[stirred sour highball fizz].sample
#   file = URI.open("https://source.unsplash.com/featured?{cocktail}")
#   cocktail = Cocktail.new(name: Faker::TvShows::BojackHorseman.character, description: Faker::Hipster.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4), category: category)
#   cocktail.photo.attach(io: file, filename: "#{('a'..'z').to_a.sample(4).join}.jpg", content_type: 'image/jpeg')
#   cocktail.save
# end

# DOSES
#
30.times do
  Dose.create(description: "#{(1..10).to_a.sample} bits of", cocktail_id: (1..10).to_a.sample, ingredient_id: (1..100).to_a.sample)
end

# 5.times do
#   Dose.create!(description: "#{(1..10).to_a.sample} bits of", cocktail_id: 1, ingredient_id: (1..100).to_a.sample)
# end
