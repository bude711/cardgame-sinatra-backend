class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.integer :player_id
      t.integer :score 
    end
  end
end
