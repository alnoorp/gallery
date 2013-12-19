class Artwork < ActiveRecord::Base
  validates_presence_of :art_type_id
  validates_presence_of :date_created
  validates :date_created,
    :date => { :before => Proc.new { Time.now } }
  validates_presence_of :title
  validates_presence_of :artist_id
  validates_numericality_of :price, :only_integer => true, :allow_blank => true
  belongs_to :art_type,
    inverse_of: :artworks

  belongs_to :artist,
    inverse_of: :artworks

  has_many :purchases, inverse_of: :artwork

  has_many :collection_artworks
  has_many :collections, through: :collection_artworks

  def sold?
    purchases.present?
  end
end
