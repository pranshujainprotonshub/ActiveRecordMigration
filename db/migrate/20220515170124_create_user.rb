class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name ,index: true
      t.string :email,index: {unique: true ,name: "unique_emails"}

      t.timestamps
    end
  end
end
