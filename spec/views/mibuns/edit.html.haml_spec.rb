require 'spec_helper'

describe "mibuns/edit" do
  before(:each) do
    @mibun = assign(:mibun, stub_model(Mibun,
      :status => "MyString",
      :absence_time => "MyString",
      :absence_reason => "MyString"
    ))
  end

  it "renders the edit mibun form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mibun_path(@mibun), "post" do
      assert_select "input#mibun_status[name=?]", "mibun[status]"
      assert_select "input#mibun_absence_time[name=?]", "mibun[absence_time]"
      assert_select "input#mibun_absence_reason[name=?]", "mibun[absence_reason]"
    end
  end
end
