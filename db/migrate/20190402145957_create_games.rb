class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :starting_cash
      t.integer :number_of_players

      t.timestamps
    end
  end
end
