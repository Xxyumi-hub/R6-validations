require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { Order.new( product_name: "gears", product_count: 7, customer: FactoryBot.create(:customer))}
  it "is valid with a product name" do
    subject.product_name="test"
    expect(subject).to be_valid
  end
  it "is valid with a product count" do
    subject.product_count=12
    expect(subject).to be_valid
  end
  it "is not valid without a customer" do
    subject.customer=nil
    expect(subject).to_not be_valid
  end

  it "is valid if a customer id corresponds to a real customer record" do
      expect(subject).to be_valid
  end
end
