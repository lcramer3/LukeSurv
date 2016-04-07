class CreateVasResponses < ActiveRecord::Migration
  def change
    create_table :vas_responses do |t|
      t.integer :value

      t.timestamps null: false
    end
  #  add_foreign_key :vas_responses, :users
  end
end
