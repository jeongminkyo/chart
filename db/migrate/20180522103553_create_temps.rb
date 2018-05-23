class CreateTemps < ActiveRecord::Migration[5.0]
  def change
    create_table :temps do |t|
      t.float :home_predict
      t.float :ev_predict
      t.float :sun_predict

      t.timestamps
    end
  end
end
