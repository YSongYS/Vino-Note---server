class ChangeImageLimit < ActiveRecord::Migration[5.2]
  def change
    remove_column :wines, :image
  end
end
