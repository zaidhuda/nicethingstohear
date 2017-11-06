class CreateNiceThings < ActiveRecord::Migration[5.0]
  def change
    create_table :nice_things do |t|
      t.string :text
      t.text :content
      t.boolean :enabled

      t.timestamps
    end
  end
end
