class AddPlaceToCompetingUser < ActiveRecord::Migration[7.0]
  def change
    add_column :competing_users, :place, :integer, default: 0, null: false
  end
end
