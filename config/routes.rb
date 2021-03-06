Rails.application.routes.draw do
  devise_for :users
  root 'issues#index'
  resources :issues do
    shallow do
      resources :votes
      resources :speeches do
        resources :comments
      end
    end
  end

  resources :likes
end
