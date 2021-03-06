class PhonesController < ApplicationController
  PHONE_REGEX = /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/
  
  def index
    render json: @text.split.delete_if{ |word| word.match(PHONE_REGEX).nil? }
  end
end
