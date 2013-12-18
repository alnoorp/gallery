class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.integer :artist_id
      t.date :date_created
      t.date :listing_date
      t.integer :price
      t.integer :type_id
      t.integer :purchase_id

      t.timestamps
    end
  end
end
