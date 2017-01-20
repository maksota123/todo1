class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_User!
end

def after_sign_in_path_for(resource)
  current_user_path
end

def after_sign_out_path_for(resource_or_scope)
  request.referrer
end
