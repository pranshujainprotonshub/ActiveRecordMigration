class CreteJoinTableCustomerProduct < ActiveRecord::Migration[7.0]
  def change
    create_join_table :customers,column_options: {null: true},table_name: categorization, :products do |t|
       t.index [:customer_id, :product_id]
       t.index [:product_id, :customer_id]
    end
  end
end
