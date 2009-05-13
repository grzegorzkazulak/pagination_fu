module PaginationFu
  
  module ViewHelpers
    # Default options
    @@fu_options = {
        :links_wrapper => 'li',
        :container => 'ul',
        :param_name => :page
      }  
    mattr_reader :fu_options
    
    def pagination_fu(collection = nil, options = {})
      
    end
  end
end