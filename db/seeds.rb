Cocktail.destroy_all
Ingredient.destroy_all

url =  'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)
cok = user["drinks"]
cok.each do |x|
  ingredients = Ingredient.create(name: x["strIngredient1"])
end

url_c =  'http://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail'
user_serialized_c = open(url_c).read
user_c = JSON.parse(user_serialized_c)
cok_c = user_c["drinks"]
cok_c.each do |x|
  c = Cocktail.new(name: x["strDrink"].to_s, picture: x["strDrinkThumb"])
  if c.picture.nil?
    c.picture = "https://unsplash.it/200/300/?random"
    c.save!
  else
    c.save!
  end
end
