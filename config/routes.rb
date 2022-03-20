Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :recipes do
    resources :favourites, only: [:create]
  end

  delete '/dashboardrecipe/:id', to: 'recipe#destroy_from_dashboard', as: :destroy_recipe_from_dashboard

end
