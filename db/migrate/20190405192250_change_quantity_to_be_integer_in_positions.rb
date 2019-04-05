class ChangeQuantityToBeIntegerInPositions < ActiveRecord::Migration[5.2]
  def change
    change_column :positions, :quantity, 'integer USING CAST(quantity AS integer)'

  end
end
