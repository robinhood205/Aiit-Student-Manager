require 'spec_helper'

describe "mibuns/show" do
  before(:each) do
    @mibun = assign(:mibun, stub_model(Mibun,
      :status => "Status",
      :absence_time => "Absence Time",
      :absence_reason => "Absence Reason"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    rendered.should match(/Absence Time/)
    rendered.should match(/Absence Reason/)
  end
end
