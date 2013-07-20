class Privacy < ActiveRecord::Base
  attr_accessible :address, :aiit_member_id, :birthday, :birthplace, :block, :building, :city, :company, :company_address, :department, :eng_name, :gender, :graduated_date, :graduated_school, :kana_name, :memo, :mobile, :mobile_email, :new_graduates, :occupation, :pc_email, :stream, :tel, :work_period, :zip_code

  belongs_to :aiit_member
end
