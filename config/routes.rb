Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  scope module: 'api' do
    namespace :v1 do
      resources :users, only: [:index, :show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#show'
end
