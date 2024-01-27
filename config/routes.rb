Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  # root "rooms#index"
  resources :rooms, only: [:index, :show, :create], param: :unique_code do
    resources :players, only: [:index, :create]
  end
  resources :games, only: [:create] do
    resources :game_settings, only: [:index, :create]
  end
end
