class AddSlugToNiceThings < ActiveRecord::Migration[5.0]
  def change
    add_column :nice_things, :slug, :string
    add_index :nice_things, :slug
  end
end
