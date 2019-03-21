class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :variety
      t.integer :vintage
      t.string :winery
      t.string :region
      t.string :country
      t.string :price_range

      t.timestamps
    end
  end
end
