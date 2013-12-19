require 'spec_helper'

describe CustomerCollection do
  let(:invalids) { ['', nil, 'string'] }

  it { should have_valid(:customer_id).when(9) }
  it { should_not have_valid(:customer_id).when(*invalids) }

  it { should have_valid(:collection_id).when(6) }
  it { should_not have_valid(:collection_id).when(*invalids) }
end
