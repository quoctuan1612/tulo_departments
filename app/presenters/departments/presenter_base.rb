# frozen_string_literal: true

module Departments
  class PresenterBase
    include ProtoGeneratable

    def initialize
      raise NotImplementedError
    end

    def generate_response
      raise NotImplementedError
    end
  end
end