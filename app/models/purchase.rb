class Purchase < ActiveRecord::Base
  validates_presence_of :customer_id
  validates_numericality_of :customer_id, only_integer: true
  belongs_to :artwork
  belongs_to :customer
end
