# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.create([
  {name: "伊沢拓司", category: "クイズ王" , birthday: "1994-05-16"},
  {name: "福良拳", category: "パズル王" , birthday: "1993-08-03"},
  {name: "河村拓哉", category: "クイズプレーヤー" , birthday: "1993-0-16"}
  ])

Video.create([
  {name: "【12時間クイズ開催】12分間クイズ！", url: "https://www.youtube.com/watch?v=jryTFRwvGsY&t=486s",
    upload_at: "2020-08-31"},
  {name: "ボジョレーの評価がツッコミどころ満載ww東大生がマジレスしてみたww",
    url: "https://www.youtube.com/watch?v=RpNu3X1S46A",
  upload_at: "2019-11-19"},
  {name: "ボジョレーの評価がツッコミどころ満載ww東大生がマジレスしてみたww",
    url: "https://www.youtube.com/watch?v=RpNu3X1S46A",
  upload_at: "2019-11-19"},
  {name: "ボジョレーの評価がツッコミどころ満載ww東大生がマジレスしてみたww",
    url: "https://www.youtube.com/watch?v=RpNu3X1S46A",
  upload_at: "2019-11-19"}
  ])
