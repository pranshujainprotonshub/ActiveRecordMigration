class ChangeInTheProduct < ActiveRecord::Migration[7.0]
  def change
    change_table :products do |t|
      t.remove :part_number
      t.string :description
      t.index :price
      t.rename :price ,:amount
  end
  end
end
