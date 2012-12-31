module Spree
  module Admin
    class LogEntriesController < ResourceController
      respond_to :html
      #before_filter :load_data
      
      def index
        respond_with(@collection)
      end
      
      protected
	
    	def collection
        return @collection if @collection.present?

        @search = LogEntry.metasearch(params[:search])
        @collection = @search.relation.page(params[:page]).per(Spree::Config[:admin_products_per_page])
 
      end
    	
      
    end
  end
end

