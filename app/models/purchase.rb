class Purchase < ActiveRecord::Base
  validates_presence_of :customer_id
  validates_numericality_of :customer_id, only_integer: true
  validates_presence_of :artwork_id
  validates_numericality_of :artwork_id, only_integer: true
  belongs_to :artwork, inverse_of: :purchases
  belongs_to :customer, inverse_of: :purchases
end
