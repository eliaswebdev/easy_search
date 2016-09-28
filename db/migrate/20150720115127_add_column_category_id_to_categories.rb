class AddColumnCategoryIdToCategories < ActiveRecord::Migration
  def change
    add_reference :categories, :category, index: true, foreign_key: true, after: :id
  end
end
