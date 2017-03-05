Rails.application.routes.draw do
  resources :videos
  root to: 'videos#index' #Topページをindexに
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
