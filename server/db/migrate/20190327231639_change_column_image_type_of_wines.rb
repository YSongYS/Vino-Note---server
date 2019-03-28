class ChangeColumnImageTypeOfWines < ActiveRecord::Migration[5.2]
  def change
    remove_column :wines, :image
    add_column :wines, :image, :text, :limit => 700000
  end
end
