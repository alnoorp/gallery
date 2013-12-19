class ArtType < ActiveRecord::Base
  validates_presence_of :name
  validates_format_of :name, with: /[a-zA-Z]/
  has_many :artworks,
    inverse_of: :art_type
end
