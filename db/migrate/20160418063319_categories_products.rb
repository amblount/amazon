class CategoriesProducts < ActiveRecord::Migration
  def change
    t.references :category, index: true, foreign_key: true
    t.references :product, index: true, foreign_key: true

    t.timestamps null: false
  end
end
