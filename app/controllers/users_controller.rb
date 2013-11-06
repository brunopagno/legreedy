class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    if params[:year].present? && params[:month].present?
      @transactions = current_user.on(params[:year], params[:month]).order('date DESC')
      @grouped_transactions = @transactions.group_by { |t| t.date }
    else
      @transactions = current_user.transactions.limit(10).order('date DESC')
      @grouped_transactions = @transactions.group_by { |t| t.date }
    end
    @stats = {}
    @stats[:total_in] = @transactions.select{ |t| t.way == TransactionWay::IN }.sum(&:value)
    @stats[:total_out] = @transactions.select{ |t| t.way == TransactionWay::OUT }.sum(&:value)
    @stats[:balance] = @stats[:total_in] - @stats[:total_out]
  end

end
