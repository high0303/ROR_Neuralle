require 'rails_helper'

RSpec.describe "order_items/index", type: :view do
  before(:each) do
    assign(:order_items, [
      OrderItem.create!(
        :quantity => 2,
        :product => nil,
        :order => nil
      ),
      OrderItem.create!(
        :quantity => 2,
        :product => nil,
        :order => nil
      )
    ])
  end

  it "renders a list of order_items" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
