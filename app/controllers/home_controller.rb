class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @wishlists = current_user.try(:wishlists)
  end
end
