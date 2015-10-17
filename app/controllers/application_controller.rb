class ApplicationController < ActionController::Base
  before_action do |controller|
    if controller.class != MainController
      @text = params.require(:text)
    end
  end
end
