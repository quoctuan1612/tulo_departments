# frozen_string_literal: true

module Departments
  class DepartmentIdRequestParams < TuloCommon::RequestParamsBase
    attribute :id, :integer

    def initialize(params)
      super(
        id: params.id&.value
      )
    end
  end
end
