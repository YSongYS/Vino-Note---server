class ChangeImageLimitStepTwo < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :image, :text, :limit => 700000
  end
end
