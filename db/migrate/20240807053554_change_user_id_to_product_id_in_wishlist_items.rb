class ChangeUserIdToProductIdInWishlistItems < ActiveRecord::Migration[7.2]
  def change
    remove_foreign_key :wishlist_items, :users

    rename_column :wishlist_items, :user_id, :product_id

    add_foreign_key :wishlist_items, :products, column: :product_id
  end
end
