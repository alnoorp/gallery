class Customer < ActiveRecord::Base
  validates_presence_of :name
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  has_many :customer_collections, inverse_of: :customer
  has_many :collections, through: :customer_collections
  has_many :purchases, inverse_of: :customer
  has_many :artworks, through: :purchases

  def total_spent
    artworks.pluck(:price).reduce(:+)
  end
end
