class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.belongs_to :auto_gate, foreign_key: true
      t.string :plate_number
      t.string :owner
      t.string :phone

      t.timestamps
    end
  end
end
