# frozen_string_literal: true

# == Schema Information
#
# Table name: Departments
#
# id(ID)
# department_name(Department Name)
# parent_department_id(Parent Department ID)
# mgr_id(Manage ID)
# description(Description)
# created_at(Created At)
# updated_at(Updated At)
#
# Indexes
#
# Foreign Keys
#
class Department < ApplicationRecord
end