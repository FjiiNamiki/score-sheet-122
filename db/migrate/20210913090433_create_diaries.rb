class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|

      t.date       :date,           null: false
      t.string     :place,          null: false
      t.string     :event
      t.text       :total_memo
      t.references :user, null: false, foreign_key: true
      t.timestamps



    end
  end
end
