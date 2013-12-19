require 'spec_helper'

describe ArtType do |variable|
  let(:invalid) { ['', nil, 8] }

  it { should have_valid(:name).when('painting') }
  it { should_not have_valid(:name).when(*invalid) }
  it { should have_many(:artworks) }

end
