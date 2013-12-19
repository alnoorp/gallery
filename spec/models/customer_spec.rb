require 'spec_helper'

describe Customer do
  let(:blanks) { ['', nil] }

  it { should have_valid(:name).when('my name') }
  it { should_not have_valid(:name).when(*blanks) }

end
