class TransactionsController < InheritedResources::Base
  actions :create, :update, :destroy

  before_action :authenticate_user!

  def create
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
    params.permit(transaction: [:user_id, :type, :value, :date, :description, :category])
  end
end
