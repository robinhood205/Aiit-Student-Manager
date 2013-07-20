require 'spec_helper'

describe "student_lists/show" do
  before(:each) do
    @student_list = assign(:student_list, stub_model(StudentList,
      :aiit_member_id => 1,
      :name => "Name",
      :classification => "Classification",
      :grade => 2,
      :program => "Program",
      :student_account => "Student Account",
      :campus_email => "Campus Email",
      :nationality => "Nationality",
      :visa => "Visa",
      :study_period => "Study Period",
      :PBL_1st => "Pbl 1st",
      :PBL_2nd => "Pbl 2nd",
      :PBL_teacher => "Pbl Teacher",
      :guarantor_id => 3,
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Classification/)
    rendered.should match(/2/)
    rendered.should match(/Program/)
    rendered.should match(/Student Account/)
    rendered.should match(/Campus Email/)
    rendered.should match(/Nationality/)
    rendered.should match(/Visa/)
    rendered.should match(/Study Period/)
    rendered.should match(/Pbl 1st/)
    rendered.should match(/Pbl 2nd/)
    rendered.should match(/Pbl Teacher/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
  end
end
