class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.integer :rating
      t.boolean :starred
      t.string :concluding_note
      t.references :user, foreign_key: true
      t.references :wine, foreign_key: true
      t.references :look, foreign_key: true
      t.references :smell, foreign_key: true
      t.references :taste, foreign_key: true

      t.timestamps
    end
  end
end
