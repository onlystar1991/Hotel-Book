class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.float :price_2hour
      t.float :price_3hour
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
