class AddCategoryToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :places, :category, foreign_key: true
  end
end
