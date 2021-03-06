class Artist < ActiveRecord::Base
  validates_presence_of :name
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  has_many :artworks,
    inverse_of: :artist
  validates_uniqueness_of :email

  def shout!
    name.upcase
  end
end
