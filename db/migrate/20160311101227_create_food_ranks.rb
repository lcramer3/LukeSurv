class CreateFoodRanks < ActiveRecord::Migration
  def change
    create_table :food_ranks do |t|
      t.integer :rank
      t.belongs_to :user, index: true
      t.belongs_to :food, index: true
      t.belongs_to :category, index: true

      t.timestamps null: false
    end
  end
end
