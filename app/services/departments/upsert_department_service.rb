# frozen_string_literal: true

module Departments
  class UpsertDepartmentService
    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      department = Department.find_or_initialize_by(id: @request_params.id)

      department.department_name = @request_params.department_name
      department.parent_department_id = @request_params.parent_department_id
      department.mgr_id = @request_params.mgr_id
      department.description = @request_params.description

      department.save
      @result = department
    end
  end
end