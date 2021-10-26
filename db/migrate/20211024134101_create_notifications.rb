class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.references :followers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
