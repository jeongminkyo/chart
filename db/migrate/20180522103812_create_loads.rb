class CreateLoads < ActiveRecord::Migration[5.0]
  def change
    create_table :loads do |t|
      t.string :date
      t.float :home
      t.float :ev
      t.float :sun

      t.timestamps
    end
  end
end
