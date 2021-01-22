class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :user_value
      t.integer :machine_value
      t.integer :status

      t.timestamps
    end
  end
end
