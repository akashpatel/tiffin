# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

d1 = Dish.new(
  img_url: "https://s3-us-west-1.amazonaws.com/peekadish/chole.jpg",
  name: "Chole Bhature",
  desc: "Popular punjabi dish is a combination of spicy chick peas and fried tortilla / bread.",
  ingredients: "Chick peas, tomatoes, onions, ginger, garlic, green chili, red chili, coriander, turmeric, salt, cardamom, indian masalas, flour.",
  calories: 522,
  protein:15 ,
  carbs: 72,
  sodium: 75,
  price: 10.00,
  order_date: Time.strptime("10/20/2015 12:00:00", "%m/%d/%Y %H:%M"),
  delivery_date: Time.strptime("10/21/2015 12:00:00", "%m/%d/%Y %H:%M"))
d1.save!
