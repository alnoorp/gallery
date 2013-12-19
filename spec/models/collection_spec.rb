require 'spec_helper'

describe Collection do
  let(:blanks) { ['', nil] }
  collection = FactoryGirl.create(:collection)

  it { should have_valid(:title).when('modern period') }
  it { should_not have_valid(:title).when(*blanks) }

  it { should have_valid(:description).when('this is a description') }
  it { should have_valid(:description).when(*blanks) }
binding.pry
  it { should have_many(:artworks).through(:collection_artworks) }

end
