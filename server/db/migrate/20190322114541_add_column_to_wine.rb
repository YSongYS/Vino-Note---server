class AddColumnToWine < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :image, :string 
  end
end
