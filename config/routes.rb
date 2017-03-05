Rails.application.routes.draw do
  devise_for :users
  resources :videos
  root to: 'videos#index' #Topページをindexに
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
