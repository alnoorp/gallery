require 'spec_helper'

describe Artwork do
  let(:blanks) { ['', nil] }

  it { should have_valid(:title).when('blurry night') }
  it { should_not have_valid(:title).when(*blanks) }

  it { should have_valid(:artist_id).when(1) }
  it { should_not have_valid(:artist_id).when(*blanks) }

  it { should have_valid(:date_created).when(Time.now - 1.minute) }
  it { should_not have_valid(:date_created).when(Time.now + 5.months) }

  it { should have_valid(:listing_date).when(Time.now) }

  it { should have_valid(:art_type_id).when(1) }
  it { should_not have_valid(:art_type_id).when(*blanks) }

  it { should have_valid(:purchase_id).when(1) }
  it { should have_valid(:purchase_id).when(*blanks) }

  it { should have_valid(:price).when(1000000) }
  it { should have_valid(:price).when(*blanks) }
  it { should_not have_valid(:price).when('blah') }

  it { should belong_to(:art_type) }
  it { should belong_to(:artist) }

end
