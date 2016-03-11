class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :foods, :categories
  end
end
