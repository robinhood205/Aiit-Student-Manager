class Privacy < ActiveRecord::Base
  attr_accessible :address, :birthday, :birthplace, :block, :building, :city, :company, :company_address, :department, :eng_name, :gender, :graduated_date, :graduated_school, :kana_name, :memo, :mobile, :mobile_email, :name, :new_graduates, :occupation, :pc_email, :stream, :tel, :work_period, :zip_code

  
end
