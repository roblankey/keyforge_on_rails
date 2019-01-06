Rails.application.routes.draw do
  root to: 'home#index'
  scope path: '/api' do
    resources :docs, only: [:index], path: '/swagger'

    scope path: '/v1' do
      resources :archons
      resources :houses
      # your routes go here
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
