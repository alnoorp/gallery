require 'spec_helper'

describe Artist do
  let(:blanks) { ['', nil] }

  it { should have_valid(:name).when('Da Vinci') }
  it { should_not have_valid(:name).when(*blanks) }

  it { should have_valid(:email).when('davincidude@yahoo.com') }
  it { should_not have_valid(:email).when(*blanks) }
  it { should_not have_valid(:email).when('me.com') }
  it { should_not have_valid(:email).when('me@com') }
  it { should_not have_valid(:email).when('@.com') }

  it { should have_valid(:birthplace).when('Earth')}

  it { should have_valid(:style).when('I paint with my feelings.')}
  it { should have_valid(:style).when(*blanks) }

  it { should have_many(:artworks) }

  describe 'validates uniqueness of email' do
    before(:each) do
      FactoryGirl.create(:artist)
    end
    it { should validate_uniqueness_of :email }
  end

  it 'creates a studio without error' do
    create(:artist)
    create(:artist)
  end

  context 'eliteist artist' do
    it 'shouts their name' do
      artist = create(:artist)
      expect(artist.shout!).to eql(artist.name.upcase)
    end

  end

end
