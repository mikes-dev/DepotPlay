class StoreController < ApplicationController
  include Session
  include CurrentCart
  
  skip_before_action :authorize
before_action :set_cart

  def index
    session_count
  	@products = Product.order(:title)
  end

  # private

  # def session_count
  #     if session[:counter].nil?
  #           session[:counter] = 1
  #         @count = session[:counter]
  #       else
  #         session[:counter] = session[:counter] + 1
  #         @count = session[:counter]
  #       end
  #     end
end
