class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.string :category
      t.string :specs
      t.integer :price
      t.integer :product_id
      t.string :owner
      t.float :rating
      t.integer :watchers

      t.timestamps null: false
    end
  end
end
