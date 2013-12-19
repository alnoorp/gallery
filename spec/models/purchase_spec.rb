require 'spec_helper'

describe Purchase do
  let(:blanks) { ['', nil] }
  it { should have_valid(:customer_id).when(1) }
  it { should_not have_valid(:customer_id).when(*blanks) }

  it { should belong_to(:artwork) }
  it { should belong_to(:customer) }

end
