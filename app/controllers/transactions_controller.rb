class TransactionsController < InheritedResources::Base
  actions :create, :update, :destroy

  before_action :authenticate_user!

  def create
    @transaction = Transaction.new(permitted_params[:transaction])
    @transaction.user = current_user
    create! { wallet_path }
  end

  def update
    update! { wallet_path }
  end

  def destroy
    destroy! { wallet_path }
  end

  private

  def permitted_params
    params.permit(transaction: [:user_id, :way, :value, :date, :description, :category])
  end
end
