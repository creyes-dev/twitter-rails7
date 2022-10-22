class AddPassChangedToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :pass_changed, :boolean, default: false, null: false
  end
end
