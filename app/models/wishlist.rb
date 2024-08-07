class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wishlist_items, dependent: :destroy
  has_many :products, through: :wishlist_items
  before_create :generate_token

  private

  def generate_token
    self.token = SecureRandom.hex(10)
  end
end
