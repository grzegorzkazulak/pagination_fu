module PaginationFu
  
  module ViewHelpers
    # Default options
    @@fu_options = {
        :links_wrapper => 'li',
        :links_class => nil,
        :links_current_class => 'selected',
        :container => 'ul',
        :param_name => :page
      }  
    mattr_reader :fu_options
    
    def pagination_fu(collection = nil, options = {})
      
    end
    
    def previous_label
      
    end
    
    def next_label
      
    end 
      
  end
end