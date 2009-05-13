require 'pagination_fu/errors'

class Collection < Array
  attr_reader :current_page, :per_page, :total_entries, :total_pages
  
  def initialize(page, per_page, total = nil)
        @current_page = page.to_i
        raise InvalidPageError.new(page, @current_page) if @current_page < 1
        @per_page = per_page.to_i
        raise ArgumentError, "`per_page` setting cannot be less than 1 (#{@per_page} given)" if @per_page < 1

        self.total_entries = total if total
  end
  
  def previous_page
        current_page > 1 ? (current_page - 1) : nil
  end
  
  def next_page
        current_page < total_pages ? (current_page + 1) : nil
  end
  
  def total_entries=(number)
        @total_entries = number.to_i
        @total_pages   = (@total_entries / per_page.to_f).ceil
  end
  
end