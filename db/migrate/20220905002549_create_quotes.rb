class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.string :name_one
      t.string :name_two

      t.timestamps
    end
  end
end
