FactoryGirl.define do

 factory :artist do
    name "picasso"
    sequence(:email) {|n| "picasso#{n}@yahoo.com"}
    birthplace 'ibiza, spain'
    style 'cool painting'
  end

end
