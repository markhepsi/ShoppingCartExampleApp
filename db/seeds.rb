Product.delete_all
Product.create! id: 1, name: "saree", price: 800, active: true, brand: "cotton"
Product.create! id: 2, name: "salwar", price: 1000, active: true,  brand: "synthetic"
Product.create! id: 3, name: "mobile", price: 10000, active: true, brand: "samsung"
Product.create! id: 4, name: "laptop", price: 40000, active: true,  brand: "dell"
Product.create! id: 5, name: "watch", price: 1000, active: true,  brand: "fastrack"
Product.create! id: 6, name: "sofas", price: 20000, active: true, d brand: "two seats"
Product.create! id: 7, name: "LED tv", price: 15000, active: true,  brand: "samsung"
Product.create! id: 8, name: "vessels", price: 150, active: true, discount:"30% -50%", brand: "silver" 


OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



