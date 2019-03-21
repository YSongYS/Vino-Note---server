class ChangeTableSmells < ActiveRecord::Migration[5.2]
  def change
    remove_column :smells, :primary
    remove_column :smells, :secondary
    remove_column :smells, :tertiary
    remove_column :smells, :flaw
    add_column :smells, :level_one, :string
    add_column :smells, :level_two, :string
    add_column :smells, :level_three, :string 
  end
end
