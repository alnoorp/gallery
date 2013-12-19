FactoryGirl.define do

 factory :collection do
    title 'modern period stuff'
    description 'does this even need explanation?'

    # collection_artwork
    artwork
    # customer_collection
    customer
    # purchase
  end
end
