Rails.application.routes.draw do
  scope path: '/api' do
    scope path: '/v1' do
      # your routes go here
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
