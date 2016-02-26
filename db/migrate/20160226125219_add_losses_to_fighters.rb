class AddLossesToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :losses, :integer, default: 0
  end
end
