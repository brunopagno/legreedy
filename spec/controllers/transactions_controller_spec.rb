require 'spec_helper'

describe TransactionsController do

  # context 'user signed in' do
  #    before do
  #      @user = User.make!
  #      sign_in @user
  #    end
  # 
  #    context 'POST create' do
  #      before do
  #        post :create, { way: TransactionWay::OUT, value: 10.90, date: Date.today }
  #      end
  #      
  #      it 'should assign current_user to new transaction' do
  #        assigns(:transaction).user.id.eql? @user.id
  #      end
  #      
  #      it 'should redirect to wallet path' do
  #        response.status.should be 302
  #        response.should redirect_to wallet_path
  #      end
  #    end
  #    
  #    context 'PUT update' do
  #      before do
  #        @transaction = Transaction.make!
  #        put :update, { value: 5.90 }
  #      end
  #      
  #      it 'should have updated value' do
  #        t = Transaction.find(@transaction.id)
  #        t.value.should.eql? 5.90
  #      end
  #      
  #      it 'should redirect to wallet path' do
  #        response.status.should be 302
  #        response.should redirect_to wallet_path
  #      end
  #    end
  #    
  #    context 'DELETE destroy' do
  #      before do
  #        @transaction = Transaction.make!
  #        delete :destroy, id: @transaction.id
  #      end
  # 
  #      it 'should redirect to wallet path' do
  #        response.status.should be 302
  #        response.should redirect_to wallet_path
  #      end
  #    end
  #  end

end
