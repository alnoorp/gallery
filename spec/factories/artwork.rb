FactoryGirl.define do

 factory :artwork do
    sequence(:title) { |n| "blurry night##{n}" }
    listing_date (Time.now - 2.days)
    date_created (Time.now - 5.years)
    price 60000000
    artist
    art_type
  end

end
