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
    name: "James' ROTH IRA",
    cash: 10000,
    game: game1,
    user: james
  )

  portfolio2 = Portfolio.create!(
    name: "James' Taxable Brokerage Account",
    cash: 20000,
    game: game1,
    user: james
  )

  portfolio3 = Portfolio.create!(
    name: "Haley's 401k",
    cash: 30000,
    game: game1,
    user: haley
  )

  portfolio4 = Portfolio.create!(
    name: "Kid's College Fund",
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
    quantity: 10,
    ticker:"AMZN",
    open_date: DateTime.current(),
    cost_basis: 1000.00,
    portfolio: portfolio1,
    # stock: amzn
  )
  position2 = Position.create!(
    quantity: 34,
    ticker:"MSFT",
    open_date: DateTime.current(),
    cost_basis: 100.00,
    portfolio: portfolio1,
    # stock: msft
  )
  position3 = Position.create!(
    quantity: 18,
    ticker:"FB",
    open_date: DateTime.current(),
    cost_basis: 200.00,
    portfolio: portfolio1,
    # stock: fb
  )


  position4 = Position.create!(
    quantity: 32,
    ticker:"V",
    open_date: DateTime.current(),
    cost_basis: 111.11,
    portfolio: portfolio1,

  )


  position1a = Position.create!(
    quantity: 102,
    ticker:"GS",
    open_date: DateTime.current(),
    cost_basis: 180.00,
    portfolio: portfolio1,
    # stock: amzn
  )
  position2a = Position.create!(
    quantity: 40,
    ticker:"SPY",
    open_date: DateTime.current(),
    cost_basis: 260.00,
    portfolio: portfolio1,
    # stock: msft
  )
  position3a = Position.create!(
    quantity: 17,
    ticker:"QQQ",
    open_date: DateTime.current(),
    cost_basis: 170.00,
    portfolio: portfolio1,
    # stock: fb
  )


  position4a = Position.create!(
    quantity: 32,
    ticker:"NKE",
    open_date: DateTime.current(),
    cost_basis: 90.00,
    portfolio: portfolio1,

  )

  position1b = Position.create!(
    quantity: 34,
    ticker:"QCOM",
    open_date: DateTime.current(),
    cost_basis: 70.34,
    portfolio: portfolio1,
    # stock: amzn
  )
  position2b = Position.create!(
    quantity: 98,
    ticker:"SQ",
    open_date: DateTime.current(),
    cost_basis: 73.12,
    portfolio: portfolio1,
    # stock: msft
  )
  position3b = Position.create!(
    quantity: 3,
    ticker:"UNH",
    open_date: DateTime.current(),
    cost_basis: 230.10,
    portfolio: portfolio1,
    # stock: fb
  )


  position4b = Position.create!(
    quantity: 88,
    ticker:"SHOP",
    open_date: DateTime.current(),
    cost_basis: 188.89,
    portfolio: portfolio1,

  )


  position5 = Position.create!(
    quantity: 82,
    ticker:"JNJ",
    open_date: DateTime.current(),
    cost_basis: 101.20,
    portfolio: portfolio2,
    # stock: amzn
  )
  position6 = Position.create!(
    quantity: 14,
    ticker:"BA",
    open_date: DateTime.current(),
    cost_basis: 100.00,
    portfolio: portfolio2,
    # stock: msft
  )
  position7 = Position.create!(
    quantity: 111,
    ticker:"AAPL",
    open_date: DateTime.current(),
    cost_basis: 201.00,
    portfolio: portfolio2,
    # stock: fb
  )

  position5a = Position.create!(
    quantity: 4,
    ticker:"X",
    open_date: DateTime.current(),
    cost_basis: 25.00,
    portfolio: portfolio2,
    # stock: amzn
  )
  position6a = Position.create!(
    quantity: 12,
    ticker:"Z",
    open_date: DateTime.current(),
    cost_basis: 39.99,
    portfolio: portfolio2,
    # stock: msft
  )
  position7a = Position.create!(
    quantity: 100,
    ticker:"MU",
    open_date: DateTime.current(),
    cost_basis: 20.00,
    portfolio: portfolio2,
    # stock: fb
  )


  position8 = Position.create!(
    quantity: 12,
    ticker:"AMD",
    open_date: DateTime.current(),
    cost_basis: 19.12,
    portfolio: portfolio3,
    # stock: msft
  )
  position9 = Position.create!(
    quantity: 78,
    ticker:"NFLX",
    open_date: DateTime.current(),
    cost_basis: 322.00,
    portfolio: portfolio3,
    # stock: fb
  )

  position8a = Position.create!(
    quantity: 57,
    ticker:"TSLA",
    open_date: DateTime.current(),
    cost_basis: 300.00,
    portfolio: portfolio3,
    # stock: msft
  )
  position9a = Position.create!(
    quantity: 100,
    ticker:"QQQ",
    open_date: DateTime.current(),
    cost_basis: 140.23,
    portfolio: portfolio3,
    # stock: fb
  )

  position8b = Position.create!(
    quantity: 120,
    ticker:"TLRY",
    open_date: DateTime.current(),
    cost_basis: 100.00,
    portfolio: portfolio3,
    # stock: msft
  )
  position9b = Position.create!(
    quantity: 100,
    ticker:"JNJ",
    open_date: DateTime.current(),
    cost_basis: 98.82,
    portfolio: portfolio3,
    # stock: fb
  )




  position10 = Position.create!(
    quantity: 100,
    ticker:"NVDA",
    open_date: DateTime.current(),
    cost_basis: 113.20,
    portfolio: portfolio4,
    # stock: msft
  )
  position11 = Position.create!(
    quantity: 403,
    ticker:"X",
    open_date: DateTime.current(),
    cost_basis: 10.00,
    portfolio: portfolio4,
    # stock: fb
  )

  position10a = Position.create!(
    quantity: 100,
    ticker:"JNJ",
    open_date: DateTime.current(),
    cost_basis: 64.00,
    portfolio: portfolio4,
    # stock: msft
  )
  position11a = Position.create!(
    quantity: 100,
    ticker:"SPY",
    open_date: DateTime.current(),
    cost_basis: 200.03,
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
    name: "NVIDIA Corporation",
    ticker: "NVDA",
    user: haley,
  )
  watchList_item5= WatchlistItem.create!(
      name: "Advanced Micro Devices Inc.",
      ticker: "AMD",
      user: haley,
    )
  watchList_item6= WatchlistItem.create!(
        name: "Invesco QQQ Trust Series 1",
        ticker: "QQQ",
        user: haley,
      )
