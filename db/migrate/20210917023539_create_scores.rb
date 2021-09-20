class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :end_id,               null: false
      t.integer :first_id,              null: false
      t.integer :second_id,              null: false
      t.integer :third_id,              null: false
      t.integer :fourth_id,              null: false
      t.integer :fifth_id,              null: false
      t.integer :sixth_id,              null: false
      t.integer :total,              null: false
      t.integer :ground_total,              null: false
      t.references :user, null: false, foreign_key: true
      t.references :diary, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
