<% if namespaced? -%>
require_dependency "<%= namespaced_file_path %>/application_controller"

<% end -%>
# coding: utf-8 
<% module_namespacing do -%>
class <%= class_name %>Controller < ApplicationController
<% actions.each do |action| -%>
  def <%= action %>
  end
<%= "\n" unless action == actions.last -%>
<% end -%>
end
<% end -%>
