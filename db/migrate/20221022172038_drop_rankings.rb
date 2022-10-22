class DropRankings < ActiveRecord::Migration[7.0]
  def up
    drop_table :rankings
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
