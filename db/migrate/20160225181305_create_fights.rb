class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.references :fighter_1, index: true
      t.references :fighter_2, index: true
      t.references :winner, index: true

      t.timestamps null: false
    end
  end
end
