class ChangePhotos < ActiveRecord::Migration[5.0]
  def change
    change_table :photos do |t|
      t.string :plate_number
      t.text :detection_score
    end
  end
end
