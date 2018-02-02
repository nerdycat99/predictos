class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :hometeam
      t.string :awayteam
      t.integer :hometeam_prediction 
      t.integer :awayteam_prediction 
      t.integer :hometeam_result
      t.integer :awayteam_result
      t.integer :user_id      
      t.timestamps
    end
  end
end
