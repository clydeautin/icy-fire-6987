# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
DishIngredient.destroy_all
Dish.destroy_all
Ingredient.destroy_all
Chef.destroy_all


Chef.create([
  { name: 'Gordon Ramsay' },
  { name: 'Jamie Oliver' },
  { name: 'Thomas Keller' },
  { name: 'Alice Waters' },
  { name: 'Massimo Bottura' },
  { name: 'José Andrés' }
])


Ingredient.create([
  { name: 'Tomato', calories: 22 },
  { name: 'Olive Oil', calories: 119 },
  { name: 'Chicken Breast', calories: 165 },
  { name: 'Garlic', calories: 4 },
  { name: 'Basil', calories: 1 },
  { name: 'Parmesan Cheese', calories: 110 },
  { name: 'Butter', calories: 102 },
  { name: 'Salt', calories: 0 }
])

# db/seeds.rb

# Assuming you already have some chefs and ingredients created

chef1 = Chef.find_by(name: 'Gordon Ramsay')
chef2 = Chef.find_by(name: 'Jamie Oliver')

Dish.create([
  { name: 'Spaghetti Bolognese', description: 'Classic Italian pasta dish with a rich, meaty sauce.', chef: chef1 },
  { name: 'Grilled Chicken Salad', description: 'Fresh mixed greens with grilled chicken breast.', chef: chef1 },
  { name: 'Tomato Basil Soup', description: 'Smooth and creamy tomato soup with fresh basil.', chef: chef2 },
  { name: 'Garlic Butter Shrimp', description: 'Juicy shrimp cooked in garlic butter sauce.', chef: chef2 }
])

# db/seeds.rb

dish1 = Dish.find_by(name: 'Spaghetti Bolognese')
dish2 = Dish.find_by(name: 'Grilled Chicken Salad')
dish3 = Dish.find_by(name: 'Tomato Basil Soup')
dish4 = Dish.find_by(name: 'Garlic Butter Shrimp')

ingredient1 = Ingredient.find_by(name: 'Tomato')
ingredient2 = Ingredient.find_by(name: 'Garlic')
ingredient3 = Ingredient.find_by(name: 'Olive Oil')
ingredient4 = Ingredient.find_by(name: 'Chicken Breast')
ingredient5 = Ingredient.find_by(name: 'Basil')
ingredient6 = Ingredient.find_by(name: 'Butter')

DishIngredient.create([
  { dish: dish1, ingredient: ingredient1 },
  { dish: dish1, ingredient: ingredient2 },
  { dish: dish1, ingredient: ingredient3 },
  { dish: dish2, ingredient: ingredient4 },
  { dish: dish2, ingredient: ingredient5 },
  { dish: dish3, ingredient: ingredient1 },
  { dish: dish3, ingredient: ingredient5 },
  { dish: dish4, ingredient: ingredient2 },
  { dish: dish4, ingredient: ingredient6 }
])