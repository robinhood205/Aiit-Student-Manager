# coding: utf-8
require 'spec_helper'

describe "status_records/index" do
  before(:each) do
    assign(:status_records, [
      stub_model(StatusRecord,
        :student_list_id => 1,
        :status => "退学",
        :absence_reason => "業務都合",
        :absence_time => "一年",
        :return_reason => "経済的理由",
        :memo => "MyText"
      ),
      stub_model(StatusRecord,
        :student_list_id => 1,
        :status => "退学",
        :absence_reason => "業務都合",
        :absence_time => "一年",
        :return_reason => "経済的理由",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of status_records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "退学".to_s, :count => 2
    assert_select "tr>td", :text => "業務都合".to_s, :count => 2
    assert_select "tr>td", :text => "一年".to_s, :count => 2
    assert_select "tr>td", :text => "経済的理由".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
