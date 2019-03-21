class CreateSmells < ActiveRecord::Migration[5.2]
  def change
    create_table :smells do |t|
      t.string :primary
      t.string :secondary
      t.string :tertiary
      t.string :flaw

      t.timestamps
    end
  end
end
