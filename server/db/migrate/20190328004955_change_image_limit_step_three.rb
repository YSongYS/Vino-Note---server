class ChangeImageLimitStepThree < ActiveRecord::Migration[5.2]
  def change
    change_column :wines, :image, :text, limit: 16.megabytes - 1
  end
end
