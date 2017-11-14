Rails.application.routes.draw do
  root 'users#index'
  resources :users, only: %i[create index new] do
    collection do
      post :search
    end
  end
end
