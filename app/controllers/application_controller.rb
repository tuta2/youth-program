class ApplicationController < ActionController::Base
  include Pagy::Backend
  include ApplicationHelper
  include SessionsHelper
  before_action :authorized
  helper_method :current_user
  helper_method :logged_in?
end
