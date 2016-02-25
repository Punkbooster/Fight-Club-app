class AddExperienceToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :experience, :integer, default: 0
  end
end
