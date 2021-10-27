# frozen_string_literal: true

module Departments
  class DepartmentsController < ::Gruf::Controllers::Base
    bind ::Tulo::Departments::V1::DepartmentService::Service    

    def get_departments
      service = Departments::GetDepartmentsService.new(nil)
      service.run!
      presenter = Departments::DepartmentsPresenter.new(service.results)
      presenter.generate_response
    end

    def upsert_department
      request_params = Departments::UpsertDepartmentRequestParams.new(request.message)
      request_params.validate!
      service = Departments::UpsertDepartmentService.new(request_params, nil)
      service.run!
      presenter = Departments::UpsertDepartmentPresenter.new(service.result)
      presenter.generate_response
    end

    def get_department_by_id
      request_params = Departments::DepartmentIdRequestParams.new(request.message)
      request_params.validate!
      service = Departments::GetDepartmentByIdService.new(request_params, nil)
      service.run!
      presenter = Departments::DepartmentPresenter.new(service.result)
      presenter.generate_response
    end

    def delete_department_by_id
      request_params = Departments::DepartmentIdRequestParams.new(request.message)
      request_params.validate!
      service = Departments::DeleteDepartmentService.new(request_params, nil)
      service.run!
      presenter = Departments::DeleteDepartmentPresenter.new(service.result)
      presenter.generate_response
    end
  end
end