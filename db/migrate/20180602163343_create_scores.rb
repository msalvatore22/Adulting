class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :finance
      t.integer :housing
      t.integer :cars
      t.integer :travel
      t.integer :technology
      t.integer :lifestyle
      t.integer :user_id

      t.timestamps
    end
  end
end
