class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.integer :artist_id, null: false
      t.datetime :date_created, null: false
      t.datetime :listing_date
      t.integer :price
      t.integer :type_id, null: false
      t.integer :purchase_id

      t.timestamps
    end
  end
end
