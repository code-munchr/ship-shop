class CreateShoppingExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_experiences do |t|

      t.timestamps
    end
  end
end
