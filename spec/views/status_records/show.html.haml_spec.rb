# coding: utf-8
require 'spec_helper'

describe "status_records/show" do
  before(:each) do
    @status_record = assign(:status_record, stub_model(StatusRecord,
      :student_list_id => 1,
      :status => "退学",
      :absence_reason => "業務都合",
      :absence_time => "一年",
      :return_reason => "経済的理由",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/退学/)
    rendered.should match(/業務都合/)
    rendered.should match(/一年/)
    rendered.should match(/経済的理由/)
    rendered.should match(/MyText/)
  end
end
