# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tulo/common/v1/permission.proto

require 'google/protobuf'

require 'google/protobuf/empty_pb'
require 'google/protobuf/wrappers_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("tulo/common/v1/permission.proto", :syntax => :proto3) do
    add_message "tulo.common.v1.UpsertPermissionRequest" do
      repeated :permission, :message, 1, "tulo.common.v1.Permission"
    end
    add_message "tulo.common.v1.UpsertPermissionResponse" do
      repeated :permission, :message, 1, "tulo.common.v1.Permission"
    end
    add_message "tulo.common.v1.IdRequest" do
      optional :role_id, :message, 1, "google.protobuf.StringValue"
    end
    add_message "tulo.common.v1.PermissionResponse" do
      repeated :permission, :message, 1, "tulo.common.v1.Permission"
    end
    add_message "tulo.common.v1.Permission" do
      optional :id, :message, 1, "google.protobuf.Int64Value"
      optional :role_id, :message, 2, "google.protobuf.StringValue"
      optional :permission_name, :message, 3, "google.protobuf.StringValue"
      optional :permission, :message, 4, "google.protobuf.StringValue"
      optional :is_active, :message, 5, "google.protobuf.BoolValue"
      optional :created_at, :message, 6, "google.protobuf.StringValue"
      optional :updated_at, :message, 7, "google.protobuf.StringValue"
    end
  end
end

module Tulo
  module Common
    module V1
      UpsertPermissionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.UpsertPermissionRequest").msgclass
      UpsertPermissionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.UpsertPermissionResponse").msgclass
      IdRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.IdRequest").msgclass
      PermissionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.PermissionResponse").msgclass
      Permission = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tulo.common.v1.Permission").msgclass
    end
  end
end
