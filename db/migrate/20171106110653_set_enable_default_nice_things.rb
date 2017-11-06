class SetEnableDefaultNiceThings < ActiveRecord::Migration[5.0]
  def change
    change_column :nice_things, :enabled, :boolean, default: true
  end
end
