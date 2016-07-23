class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.binary :data
      t.datetime :time

      t.timestamps
    end
  end
end
