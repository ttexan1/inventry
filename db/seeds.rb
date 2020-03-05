# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["野菜", "果物", "肉", "飲み物"].each do |c|
  Category.create!(
    name: c
  )
end

c1 = Category.first
["白菜", "大根", "トマト", "もやし"].each do |product|
  Product.create!(
    category_id: c1.id,
    name: product
  )  
end

c2 = Category.second
["リンゴ", "ばなな", "パイナップル", "ぶどう"].each do |product|
  Product.create!(
    category_id: c2.id,
    name: product
  )  
end

c3 = Category.third
["鳥もも", "手羽先", "豚肉", "牛肉"].each do |product|
  Product.create!(
    category_id: c3.id,
    name: product
  )  
end

c4 = Category.fourth
["コーラ", "ジンジャーエール", "コーヒー", "紅茶"].each do |product|
  Product.create!(
    category_id: c4.id,
    name: product
  )  
end