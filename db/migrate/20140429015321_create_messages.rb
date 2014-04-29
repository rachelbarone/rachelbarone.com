class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :email, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :city
      t.string :state
      t.string :country
      t.string :phone
      
      t.text :referrer
      t.text :body, null: false

      t.timestamps
    end
  end
end
