# frozen_string_literal: true

module Departments
  class UpsertDepartmentRequestParams < TuloCommon::RequestParamsBase 
    attribute :id, :integer
    attribute :department_name, :string
    attribute :parent_department_id, :integer
    attribute :mgr_id, :integer
    attribute :description, :string
    
    def initialize(params)
      super(
        id: params.department.id&.value,
        department_name: params.department.department_name&.value,
        parent_department_id: params.department.parent_department_id&.value,
        mgr_id: params.department.mgr_id&.value,
        description: params.department.description&.value,
      ) 
    end
  end
end