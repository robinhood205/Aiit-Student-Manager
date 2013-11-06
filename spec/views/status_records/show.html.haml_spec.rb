<<<<<<< HEAD
# coding: utf-8
=======
>>>>>>> origin/chou
require 'spec_helper'

describe "status_records/show" do
  before(:each) do
    @status_record = assign(:status_record, stub_model(StatusRecord,
      :student_list_id => 1,
      :status => "Status",
      :absence_time => "Absence Time",
      :absence_reason => "Absence Reason",
<<<<<<< HEAD
      :return_reason => "業務都合",
=======
>>>>>>> origin/chou
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Status/)
    rendered.should match(/Absence Time/)
    rendered.should match(/Absence Reason/)
<<<<<<< HEAD
    rendered.should match(/業務都合/)
=======
>>>>>>> origin/chou
    rendered.should match(/MyText/)
  end
end
