class CreateDrawCharts < ActiveRecord::Migration[5.0]
  def change
    create_table :draw_charts do |t|
      t.string :date
      t.float :home_predict
      t.float :EV_predict
      t.float :sun_predict
      t.timestamps
    end
  end
end
