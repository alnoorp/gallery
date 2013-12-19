require 'spec_helper'

describe CollectionArtwork do
  let(:blanks) { ['', nil] }

  it { should have_valid(:artwork_id).when(1) }
  it { should_not have_valid(:artwork_id).when(*blanks) }

  it { should have_valid(:collection_id).when(1) }
  it { should_not have_valid(:collection_id).when(*blanks) }

end
