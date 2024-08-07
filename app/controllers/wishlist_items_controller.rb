class WishlistItemsController < ApplicationController
  before_action :set_wishlist

  def create
    product = Product.find(params[:product_id])
    @wishlist.wishlist_items.create(product:)
    redirect_to @wishlist, notice: 'Product added to wishlist'
  end

  def destroy
    wishlist_item = @wishlist.wishlist_items.find(params[:id])
    wishlist_item.destroy
    redirect_to @wishlist, notice: 'Product removed from wishlist'
  end

  private

  def set_wishlist
    @wishlist = current_user.wishlists.find(params[:wishlist_id])
  end
end
