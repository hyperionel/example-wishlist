class AddTokenToWishlists < ActiveRecord::Migration[7.2]
  def change
    add_column :wishlists, :token, :string
  end
end
