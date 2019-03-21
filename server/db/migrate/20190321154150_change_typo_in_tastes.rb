class ChangeTypoInTastes < ActiveRecord::Migration[5.2]
  def change
    remove_column :tastes, :boy
    add_column :tastes, :body, :integer
  end
end
