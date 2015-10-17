class ApplicationController < ActionController::Base
  before_action do |controller|
    if not controller.class == 'MainController'
      @text = params.require(:text)
    end
  end
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
