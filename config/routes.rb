Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'results/index'
      post 'results/create'
      get 'results/show/:id', to: 'results#show'
      delete 'results/destroy', to: 'results#destroy'
    end
  end
  root 'home#index'
  get '/*path' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
