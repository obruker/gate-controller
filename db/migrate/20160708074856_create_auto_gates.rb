class CreateAutoGates < ActiveRecord::Migration[5.0]
  def change
    create_table :auto_gates do |t|
      t.string :name
      t.text :open_code
      t.string :shared_secret

      t.timestamps
    end
  end
end
