FactoryGirl.define do

 factory :collection do
    sequence(:title) { |n| "modern period stuff ##{n}" }
    description 'does this even need explanation?'

  end
end
