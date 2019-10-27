class CreateShexItems < ActiveRecord::Migration[6.0]
  def change
    create_table :shex_items do |t|
      t.references :item, null: false, foreign_key: true
      t.references :shopping_experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
