# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: tulo/departments/v1/department.proto for package 'tulo.departments.v1'

require 'grpc'
require 'tulo/departments/v1/department_pb'

module Tulo
  module Departments
    module V1
      module DepartmentService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'tulo.departments.v1.DepartmentService'

          rpc :GetDepartments, ::Google::Protobuf::Empty, ::Tulo::Departments::V1::DepartmentsResponse
          rpc :UpsertDepartment, ::Tulo::Departments::V1::UpsertDepartmentRequest, ::Tulo::Departments::V1::UpsertDepartmentResponse
          rpc :GetDepartmentById, ::Tulo::Departments::V1::DepartmentIdRequest, ::Tulo::Departments::V1::DepartmentResponse
          rpc :DeleteDepartmentById, ::Tulo::Departments::V1::DepartmentIdRequest, ::Tulo::Common::V1::CommonDeleteResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end