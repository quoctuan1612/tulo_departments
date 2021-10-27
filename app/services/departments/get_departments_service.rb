# frozen_string_literal: true

module Departments
  class GetDepartmentsService
    include ActiveModel::Model 
    
    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      departments = Department.all

      @results = departments
    end
  end
end