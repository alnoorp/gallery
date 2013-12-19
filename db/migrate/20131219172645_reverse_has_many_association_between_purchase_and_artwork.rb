class ReverseHasManyAssociationBetweenPurchaseAndArtwork < ActiveRecord::Migration
  def up
    remove_column :artworks, :purchase_id
    add_column :purchases, :artwork_id, :integer, null: false
  end

  def down
    add_column :artworks, :purchase_id, :integer, null: false
    remove_column :purchases, :artwork_id
  end
end
