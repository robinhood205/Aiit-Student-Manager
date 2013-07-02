require 'spec_helper'

describe "mibuns/new" do
  before(:each) do
    assign(:mibun, stub_model(Mibun,
      :status => "MyString",
      :absence_time => "MyString",
      :absence_reason => "MyString"
    ).as_new_record)
  end

  it "renders new mibun form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mibuns_path, "post" do
      assert_select "input#mibun_status[name=?]", "mibun[status]"
      assert_select "input#mibun_absence_time[name=?]", "mibun[absence_time]"
      assert_select "input#mibun_absence_reason[name=?]", "mibun[absence_reason]"
    end
  end
end
