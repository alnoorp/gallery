class Collection < ActiveRecord::Base
  validates_presence_of :title
  has_many :artworks, through: :collection_artworks
end
