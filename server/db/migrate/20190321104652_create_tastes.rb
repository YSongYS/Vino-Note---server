class CreateTastes < ActiveRecord::Migration[5.2]
  def change
    create_table :tastes do |t|
      t.integer :sweetness
      t.integer :acidity
      t.integer :tannin
      t.integer :alcohol
      t.integer :boy

      t.timestamps
    end
  end
end
