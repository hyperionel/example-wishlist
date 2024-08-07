class WishlistsController < ApplicationController
  before_action :set_wishlist, only: %i[update edit destroy show]
  before_action :authenticate_user!, except: :show

  def index
    @wishlists = current_user.wishlists
  end

  def new
    @wishlist = current_user.wishlists.build
  end

  def create
    @wishlist = current_user.wishlist.build(wishlist_params)

    if @wishlist.save
      redirect_to @wishlist, notice: 'wishlist was successfuly created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @wishlist.update(wishlist_params)
      redirect_to @wishlist, notice: 'wishlist was successfully updated'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit; end

  def destroy
    @wishlist.destroy
    redirect_to wishlists_url, notice: 'Wishlist was successfully destroyed'
  end

  def show
    if @wishlist.nil?
      redirect_to root_path, alert: 'Wishlist not found.'
    else
      authenticate_user! unless params[:token]
    end
  end

  private

  def set_wishlist
    if params[:id]
      @wishlist = current_user.wishlists.find_by(id: params[:id])
    elsif params[:token]
      @wishlist = Wishlist.find_by(token: params[:token])
    end
  end

  def wishlist_params
    params.require(:wishlist).permit(:name)
  end
end
