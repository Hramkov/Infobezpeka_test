Rails.application.routes.draw do
  resources :restaurants do
    resources :tables do
      resources :reservations
    end
  end

  root to: 'restaurants#index'
end
