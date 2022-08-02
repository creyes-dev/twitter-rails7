class AddStadiumToMatches < ActiveRecord::Migration[7.0]
  def change
    add_reference :matches, :stadium, null: false, foreign_key: true
  end
end
