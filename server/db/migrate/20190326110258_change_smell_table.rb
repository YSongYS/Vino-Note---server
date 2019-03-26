class ChangeSmellTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :smells, :level_one
    remove_column :smells, :level_two
    remove_column :smells, :level_three
    add_column :smells, :primary_level_two, :string
    add_column :smells, :primary_level_three, :string
    add_column :smells, :secondary_level_two, :string
    add_column :smells, :secondary_level_three, :string
    add_column :smells, :tertiary_level_two, :string
    add_column :smells, :tertiary_level_three, :string
    add_column :smells, :flaw_level_two, :string
    add_column :smells, :flaw_level_three, :string
  end
end
