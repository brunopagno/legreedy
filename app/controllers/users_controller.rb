class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @last_few = current_user.transactions.limit(10).order('date DESC').group_by { |t| t.date }
  end

  def month
    @transactions = current_user.on(params[:year], params[:month]).order('date DESC').group_by { |t| t.date }
  end

end
