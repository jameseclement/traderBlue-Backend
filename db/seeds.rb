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
    password: '123',
    email: "james@james.com",
    first_name: "James",
    last_name: "Clement"
  )

  haley = User.create!(
    username: "haley",
    password: '123',
    email: "haley@haley.com",
    first_name: "Haley",
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

  portfolio2 = Portfolio.create!(
    name: "Second Portfolio",
    cash: 20000,
    game: game1,
    user: james
  )

  portfolio3 = Portfolio.create!(
    name: "Third Portfolio",
    cash: 30000,
    game: game1,
    user: haley
  )

  portfolio4 = Portfolio.create!(
    name: "Fourth Portfolio",
    cash: 40000,
    game: game1,
    user: haley
  )

  # amzn = Stock.create!(
  #   name: "Amazon.com",
  #   ticker: "AMZN",
  #   cap_level: "Large Cap",
  #   industry: "Technology"
  # )
  #
  # msft = Stock.create!(
  #   name: "Microsoft Corporation",
  #   ticker: "MSFT",
  #   cap_level: "Large Cap",
  #   industry: "Technology"
  # )
  #
  # fb = Stock.create!(
  #   name: "Facebook",
  #   ticker: "FB",
  #   cap_level: "Large Cap",
  #   industry: "Technology"
  # )
  # v = Stock.create!(
  #   name: "Visa",
  #   ticker: "V",
  #   cap_level: "Large Cap",
  #   industry: "Finance"
  # )

  position1 = Position.create!(
    quantity: 100,
    ticker:"AMZN",
    open_date: DateTime.current(),
    cost_basis: 1000.00,
    portfolio: portfolio1,
    # stock: amzn
  )
  position2 = Position.create!(
    quantity: 100,
    ticker:"MSFT",
    open_date: DateTime.current(),
    cost_basis: 100.00,
    portfolio: portfolio1,
    # stock: msft
  )
  position3 = Position.create!(
    quantity: 100,
    ticker:"FB",
    open_date: DateTime.current(),
    cost_basis: 200.00,
    portfolio: portfolio1,
    # stock: fb
  )


  position4 = Position.create!(
    quantity: 100,
    ticker:"V",
    open_date: DateTime.current(),
    cost_basis: 111.11,
    portfolio: portfolio1,

  )

  position5 = Position.create!(
    quantity: 100,
    ticker:"JNJ",
    open_date: DateTime.current(),
    cost_basis: 100.00,
    portfolio: portfolio2,
    # stock: amzn
  )
  position6 = Position.create!(
    quantity: 100,
    ticker:"BA",
    open_date: DateTime.current(),
    cost_basis: 100.00,
    portfolio: portfolio2,
    # stock: msft
  )
  position7 = Position.create!(
    quantity: 100,
    ticker:"AAPL",
    open_date: DateTime.current(),
    cost_basis: 200.00,
    portfolio: portfolio2,
    # stock: fb
  )

  position8 = Position.create!(
    quantity: 100,
    ticker:"AMD",
    open_date: DateTime.current(),
    cost_basis: 100.00,
    portfolio: portfolio3,
    # stock: msft
  )
  position9 = Position.create!(
    quantity: 100,
    ticker:"MU",
    open_date: DateTime.current(),
    cost_basis: 200.00,
    portfolio: portfolio3,
    # stock: fb
  )
  position10 = Position.create!(
    quantity: 100,
    ticker:"NVDA",
    open_date: DateTime.current(),
    cost_basis: 100.00,
    portfolio: portfolio4,
    # stock: msft
  )
  position11 = Position.create!(
    quantity: 100,
    ticker:"X",
    open_date: DateTime.current(),
    cost_basis: 200.00,
    portfolio: portfolio4,
    # stock: fb
  )




  watchList_item1 = WatchlistItem.create!(
    name: "Microsoft Corp",
    ticker: "MSFT",
    cap_level: "Large Cap",
    industry: "Technology",
    user: james,
    # portfolio: portfolio1
  )
  watchList_item2 = WatchlistItem.create!(
    name: "Amazon.com",
    ticker: "AMZN",
    cap_level: "Large Cap",
    industry: "Technology",
    user: james,
    # portfolio: portfolio1
  )
  watchList_item3 = WatchlistItem.create!(
    name: "Facebook",
    ticker: "FB",
    cap_level: "Large Cap",
    industry: "Technology",
    user: james,
    # portfolio: portfolio1
  )


  watchList_item4= WatchlistItem.create!(
    ticker: "NVDA",
    user: haley,
  )
  watchList_item5= WatchlistItem.create!(
      ticker: "AMD",
      user: haley,
    )
  watchList_item6= WatchlistItem.create!(
        ticker: "QQQ",
        user: haley,
      )
