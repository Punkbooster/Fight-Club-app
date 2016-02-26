class AddWinsToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :wins, :integer, default: 0
  end
end
