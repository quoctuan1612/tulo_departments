# frozen_string_literal: true

module Departments
  class DeleteDepartmentService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      department = Department.find_by(id: @request_params.id)
      department.destroy

      @result = true
    end
  end
end
