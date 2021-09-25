Rails.application.routes.draw do
  root "articles#index"

  resources :articles
  resources :folders do
    resources :tasks
  end

end
