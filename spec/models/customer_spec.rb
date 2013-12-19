require 'spec_helper'

describe Customer do
  let(:blanks) { ['', nil] }

  it { should have_valid(:name).when('my name') }
  it { should_not have_valid(:name).when(*blanks) }

  it { should have_many(:collections).through(:customer_collections) }

  it { should have_many(:purchases) }

  it 'shows purchases made by a customer' do
    purchase = create(:purchase)
    customer = purchase.customer
    art = purchase.artwork
    expect(customer.total_spent).to eq(art.price)
    expect(customer.artworks).to include(art)
  end

  it "shows customer's favorite collections" do
    # create(:customer)
    # 3.times { create(:customer_collections) }


  end

end
