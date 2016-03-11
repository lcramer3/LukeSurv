class CreateFoodRanks < ActiveRecord::Migration
  def change
    create_table :food_ranks do |t|
      t.integer :rank

      t.timestamps null: false
    end
  end
end
