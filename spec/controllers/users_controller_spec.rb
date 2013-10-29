require 'spec_helper'

describe UsersController do

  context 'user not logged in' do
    it 'should redirect to login' do
      get :show
      response.status.should be 302
      response.should redirect_to new_user_session_path
    end
  end
  
  context 'user logged in' do
    before do
      sign_in User.make!
    end

    it 'should assign last_few on show' do
      get :show
      assigns(:last_few).should be_true
    end
  end

end
