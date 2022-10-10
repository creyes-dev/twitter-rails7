class RemoveLocationIdFromMatches < ActiveRecord::Migration[7.0]
  def change
    remove_reference :matches, :location, null: false, foreign_key: true
  end
end
