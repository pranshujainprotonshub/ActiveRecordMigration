class ExecuteRawSql < ActiveRecord::Migration[7.0]
  def change
    Product.connection.execute("Update products SET amount ='free' WHERE 1=1")
  end
end
