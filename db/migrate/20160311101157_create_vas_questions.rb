class CreateVasQuestions < ActiveRecord::Migration
  def change
    create_table :vas_questions do |t|
      t.string :prompt
      t.integer :order

      t.timestamps null: false
    end
  end
end
