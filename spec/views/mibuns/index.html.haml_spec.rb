require 'spec_helper'

describe "mibuns/index" do
  before(:each) do
    assign(:mibuns, [
      stub_model(Mibun,
        :status => "Status",
        :absence_time => "Absence Time",
        :absence_reason => "Absence Reason"
      ),
      stub_model(Mibun,
        :status => "Status",
        :absence_time => "Absence Time",
        :absence_reason => "Absence Reason"
      )
    ])
  end

  it "renders a list of mibuns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Absence Time".to_s, :count => 2
    assert_select "tr>td", :text => "Absence Reason".to_s, :count => 2
  end
end
