class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :products,:amount, :text
  end
end
