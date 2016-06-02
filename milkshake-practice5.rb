class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
    #Let's establish what our counter should be before we start adding ingredients into the mix
    total_price_of_milkshake = @base_price
    #Add each ingredients price to our total
    @ingredients.each do |ingredient|
      total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   puts "The total of your milkshake is #{total_price_of_milkshake} dollars."
  end

end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class ShackShop
  def initialize
    @milkshakes = [ ]    
  end

  def add_milkshake(milkshake)
    @milkshakes.push(milkshake)
  end

  def order_total
    #Let's establish what our counter should be before we start adding milkshakes to the order
    total_order_price = 0
    #Add each milkshake price to our total
    @milkshakes.each do |milkshake|
      total_order_price += milkshake.price_of_milkshake
  end
  #return  our total price to whoever called for it
   puts "The total of all your milkshakes is #{total_order_price} dollars."
  end

end

# Ingredients
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
coconut = Ingredient.new("Coconut", 2)
almonds = Ingredient.new("Almonds", 3)
# End ingredients

my_order = ShackShop.new

# Shakes
#1
nizars_milkshake = MilkShake.new
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
my_order.add_milkshake(nizars_milkshake)

#2
my_milkshake = MilkShake.new
my_milkshake.add_ingredient(banana)
my_milkshake.add_ingredient(coconut)
my_milkshake.add_ingredient(almonds)
my_order.add_milkshake(my_milkshake)
# End shakes

puts nizars_milkshake.price_of_milkshake
puts my_milkshake.price_of_milkshake

puts my_order.order_total





