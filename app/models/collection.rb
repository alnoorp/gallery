class Collection < ActiveRecord::Base
  validates_presence_of :title
  has_many :collection_artworks
  has_many :artworks, through: :collection_artworks
  has_many :customer_collections
  has_many :customers, through: :customer_collections
end
