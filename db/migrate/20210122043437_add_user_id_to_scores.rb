class AddUserIdToScores < ActiveRecord::Migration[6.0]
  def change
    add_reference :scores, :user, null: false, foreign_key: true, default: 1
  end
end
