# frozen_string_literal: true

module Departments
  class UpsertDepartmentPresenter < PresenterBase
    def initialize(department)
      @department = department
    end

    def generate_response
      Tulo::Departments::V1::UpsertDepartmentResponse.new(
        department: Tulo::Departments::V1::Department.new(
          id: proto_int64(@department.id),
          department_name: proto_string(@department.department_name),
          parent_department_id: proto_int64(@department.parent_department_id),
          mgr_id: proto_int64(@department.mgr_id),
          description: proto_string(@department.description),
          created_at: proto_string(@department.created_at),
          updated_at: proto_string(@department.updated_at)
        )
      )
    end
  end
end