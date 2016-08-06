class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :type
      t.string :category
      t.string :title
      t.text :body
      t.integer :price
      t.string :location
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
