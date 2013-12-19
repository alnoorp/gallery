class Customer < ActiveRecord::Base
  validates_presence_of :name
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
