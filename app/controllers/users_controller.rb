class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    if params[:year].present? && params[:month].present?
      @transactions = current_user.on(params[:year], params[:month]).order('date DESC').group_by { |t| t.date }
    else
      @transactions = current_user.transactions.limit(10).order('date DESC').group_by { |t| t.date }
    end
  end

end
