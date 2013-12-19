class CustomerCollection < ActiveRecord::Base
  validates_presence_of :customer_id
  validates_numericality_of :customer_id, :only_integer => true
  validates_presence_of :collection_id
  validates_numericality_of :collection_id, :only_integer => true
  belongs_to :customer, inverse_of: :customer_collections
  belongs_to :collection, inverse_of: :customer_collections
end
