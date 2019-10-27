class AddQuantityToShexItem < ActiveRecord::Migration[6.0]
  def change
    add_column :shex_items, :quantity, :integer
  end
end
