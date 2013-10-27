class PagesController < ApplicationController
  def home
    if user_signed_in?
      redirect_to wallet_path
    end
  end
end
