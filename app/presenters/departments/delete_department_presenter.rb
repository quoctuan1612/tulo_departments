# frozen_string_literal: true

module Departments
  class DeleteDepartmentPresenter < PresenterBase
    def initialize(message)
      @message = message
    end

    def generate_response
      Tulo::Common::V1::CommonDeleteResponse.new(message: proto_bool(@message))
    end
  end
end
