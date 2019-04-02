# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean



  james = User.create!(
    username: "james",
    password_digest: '123',
    email: "james@james.com",
    first_name: "James",
    last_name: "Clement"
  )

  game1 = Game.create!(
    name: "Game1",
    start_date: DateTime.current(),
    end_date: DateTime.new(2019, 8, 29, 22, 35, 0),
    starting_cash: 10000,
    number_of_players: 1
  )

  portfolio1 = Portfolio.create!(
    name: "First Portfolio",
    cash: 10000,
    game: game1,
    user: james
  )

  position1 = Position.create!(
    quantity: 100,
    ticker:AMZN,
    open_date: DateTime.current(),
    cost_basis: 1000.00,
    portfolio: portfolio1,
    stock: amzn
  )
  amzn = Stock.create!(
    name: "Amazon.com",
    ticker: "AMZN",
    cap_level: "Large Cap",
    industry: "Technology"
  )
  msft = Stock.create!(
    name: "Microsoft Corporation",
    ticker: "MSFT",
    cap_level: "Large Cap",
    industry: "Technology"
  )

  watchist_item1 = WatchlistItem.create!(
    name: "Microsoft Corp",
    ticker: "MSFT",
    cap_level: "Large Cap",
    industry: "Technology",
    stock: msft,
    portfolio: portfolio1
  )



#   5.times do
#     doc = Document.create!(user: user, title: Faker::Book.title)
#
#     Faker::Number.between(1, 6).times do
#       Version.create!(
#         document: doc,
#         data: data_url
#       )
#     end
#   end
# end
