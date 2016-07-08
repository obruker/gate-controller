class CreateGates < ActiveRecord::Migration[5.0]
  def change
    create_table :gates do |t|
      t.string :name
      t.string :open_code
      t.string :text
      t.string :shared_secret
      t.string :string

      t.timestamps
    end
  end
end
