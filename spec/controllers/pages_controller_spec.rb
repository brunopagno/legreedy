require 'spec_helper'

describe PagesController do

  context 'user signed in' do
    before do
      sign_in User.make!
    end

    it 'should redirect on home' do
      get :home
      response.status.should be 302
      response.should redirect_to wallet_path
    end
  end

end
