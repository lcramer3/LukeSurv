# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'Salty Snack Foods'}, {name: 'Fruits'}, {name: 'Fast Foods'}])

foods = Food.create([{name: 'Potato Chips', category_id: 1}, {name: 'Pretzels', category_id: 1}, {name: 'Apples', category_id: 2}, {name: 'Oranges', category_id: 2}])

vas_questions = VasQuestion.create([{prompt: 'Do you like food?', order: '1'}, {prompt: 'Favorite food?', order: '2'}, {prompt: 'Is this question 3?', order: '3'}])



#users = User.create([{name: 'Luke'}, {name: 'Kevin'}, {name: 'Stephanie'}])

#FoodRank.create()

#food_ranks = FoodRank.create([{user_id: 1, food: 1, rank: 1}, {user_id: 2, food: 1, rank: 2}, {user_id: 2, food: 1, rank: 3}])

#vas_responses = VasResponse.create([{value: '10', user_id: '1'}, {value: '20', user_id: '2'}])
