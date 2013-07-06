require 'spec_helper'

describe "status_records/show" do
  before(:each) do
    @status_record = assign(:status_record, stub_model(StatusRecord,
      :status => "Status",
      :absence_time => "Absence Time",
      :absence_reason => "Absence Reason",
      :memo => "Memo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    rendered.should match(/Absence Time/)
    rendered.should match(/Absence Reason/)
    rendered.should match(/Memo/)
  end
end
