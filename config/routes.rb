Legreedy::Application.routes.draw do
  root to: 'pages#home'

  get 'wallet' => 'users#show', as: 'wallet'
  get 'montlhy' => 'users#monthly', as: 'monthly'

  resources 'transactions', only: [:create, :update, :destroy]

  devise_for :users
end
