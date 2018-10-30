require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
  end

  it "responds successfully" do
    sign_in @user
    git :index
    expect(response).to be_success
  end
end
