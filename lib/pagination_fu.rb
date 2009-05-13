# PaginationFu
require 'active_support'

module PaginationFu
  class << self
    def run
      # code
    end
  end
end

if defined?(Rails) and defined?(ActiveRecord) and defined?(ActionController)
  PaginationFu.run
end