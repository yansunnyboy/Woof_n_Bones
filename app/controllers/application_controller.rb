class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(_resource)
    # return the path based on resource
    "/pages"
  end
end
