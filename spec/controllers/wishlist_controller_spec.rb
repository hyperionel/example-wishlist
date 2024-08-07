require 'rails_helper'

RSpec.describe WishlistsController, type: :controller do
  it 'renders the new view' do
    get :new
    expect(response).to render_template('new')
  end
end
