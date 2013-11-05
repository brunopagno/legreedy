Legreedy::Application.routes.draw do
  root to: 'pages#home'

  get 'wallet' => 'users#show', as: 'wallet'
  get 'month/:year/:month' => 'users#month', as: 'month'

  resources 'transactions', only: [:create, :update, :destroy]

  devise_for :users
end
