class AddNameToWishlists < ActiveRecord::Migration[7.2]
  def change
    add_column :wishlists, :name, :string
  end
end
