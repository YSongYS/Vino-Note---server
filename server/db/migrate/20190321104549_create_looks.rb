class CreateLooks < ActiveRecord::Migration[5.2]
  def change
    create_table :looks do |t|
      t.string :color
      t.integer :clarity
      t.integer :viscosity

      t.timestamps
    end
  end
end
