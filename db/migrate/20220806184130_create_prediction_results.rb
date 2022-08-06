class CreatePredictionResults < ActiveRecord::Migration[7.0]
  def change
    create_table :prediction_results do |t|
      t.string :description

      t.timestamps
    end
  end
end
