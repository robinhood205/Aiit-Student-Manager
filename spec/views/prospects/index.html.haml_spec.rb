require 'spec_helper'

describe "prospects/index" do
  before(:each) do
    assign(:prospects, [
      stub_model(Prospect,
        :kbsnko => "Kbsnko",
        :kbsryo => "Kbsryo",
        :event => "Event",
        :infoyn => false,
        :syugan => "Syugan"
      ),
      stub_model(Prospect,
        :kbsnko => "Kbsnko",
        :kbsryo => "Kbsryo",
        :event => "Event",
        :infoyn => false,
        :syugan => "Syugan"
      )
    ])
  end

  it "renders a list of prospects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Kbsnko".to_s, :count => 2
    assert_select "tr>td", :text => "Kbsryo".to_s, :count => 2
    assert_select "tr>td", :text => "Event".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Syugan".to_s, :count => 2
  end
end
