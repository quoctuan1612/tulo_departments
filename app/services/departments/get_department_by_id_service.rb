# frozen_string_literal: true

module Departments
  class GetDepartmentByIdService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      department = Department.find_by(id: @request_params.id)

      raise TuloCommon::RequestParamsBase::InvalidRequestParams, 
        OpenStruct.new(messages: { id: [I18n.t('errors.messages.department.record_not_found', id: @request_params.id)] }) if department.blank?

      @result = department
    end
  end
end
