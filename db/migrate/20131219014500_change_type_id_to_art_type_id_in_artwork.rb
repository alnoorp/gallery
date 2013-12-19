class ChangeTypeIdToArtTypeIdInArtwork < ActiveRecord::Migration
  def up
    rename_column :artworks, :type_id, :art_type_id
  end
  def down
    rename_column :artworks, :art_type_id, :type_id
  end
end
