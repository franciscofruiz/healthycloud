# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :load_menu_items
  layout :select_layout
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
=begin
  ActiveScaffold.set_defaults do |conf|
    conf.list.results_per_page = 20
  end
=end

  def select_layout
    if(request.xhr?)
      return false
    else
      return "activescaffold"
    end
  end

  def load_menu_items
    @menu_items = MenuItem.find(:all)
  end


end
