class CreateCatalogs < ActiveRecord::Migration[7.0]
  def change
    create_table :catalogs do |t|
      t.belongs_to :category
      t.belongs_to :task
      t.timestamps
    end
  end
end
