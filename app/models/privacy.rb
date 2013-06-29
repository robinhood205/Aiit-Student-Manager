class Privacy < ActiveRecord::Base
  attr_accessible :address, :birthday, :block, :building, :city, :company, :company_address, :department, :eng_name, :graduated_date, :graduated_school, :kana_name, :mail_mobile, :mail_pc, :mobile, :name, :nationality, :occupation, :sex, :tel, :zip_code
end
