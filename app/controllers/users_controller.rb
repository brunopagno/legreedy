class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    year = params[:year].present? ? params[:year] : Date.today.year
    month = params[:month].present? ? params[:month] : Date.today.month
    @date = Date.new(year.to_i, month.to_i)
    @transactions = current_user.on(params[:year], params[:month]).order('date DESC')
    @grouped_transactions = @transactions.group_by { |t| t.date }
    @stats = {}
    @stats[:total_in] = @transactions.select{ |t| t.way == TransactionWay::IN }.sum(&:value)
    @stats[:total_out] = @transactions.select{ |t| t.way == TransactionWay::OUT }.sum(&:value)
    @stats[:balance] = @stats[:total_in] - @stats[:total_out]
  end

end
