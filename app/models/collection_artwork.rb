class CollectionArtwork < ActiveRecord::Base
  validates_presence_of :artwork_id
  validates_presence_of :collection_id
  has_many :artworks,
    inverse_of: :collection_artwork
  has_many :collections,
    inverse_of: :collection_artwork
end
