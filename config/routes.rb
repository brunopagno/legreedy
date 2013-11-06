Legreedy::Application.routes.draw do
  root to: 'pages#home'

  get 'wallet(/:year/:month)' => 'users#show', as: 'wallet'

  resources 'transactions', only: [:new, :create, :update, :destroy]

  devise_for :users
end
