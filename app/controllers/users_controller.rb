class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @last_few = current_user.transactions.limit(10).group_by { |t| t.date }
  end

  def monthly
  end

end
