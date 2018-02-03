class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.string :hometeam
      t.string :awayteam
      t.integer :hometeam_result 
      t.integer :awayteam_result 
      t.timestamps
    end
  end
end
