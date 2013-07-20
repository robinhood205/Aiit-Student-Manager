require 'spec_helper'

describe "status_records/index" do
  before(:each) do
    assign(:status_records, [
      stub_model(StatusRecord,
        :student_list_id => 1,
        :status => "Status",
        :absence_time => "Absence Time",
        :absence_reason => "Absence Reason",
        :memo => "MyText"
      ),
      stub_model(StatusRecord,
        :student_list_id => 1,
        :status => "Status",
        :absence_time => "Absence Time",
        :absence_reason => "Absence Reason",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of status_records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Absence Time".to_s, :count => 2
    assert_select "tr>td", :text => "Absence Reason".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
