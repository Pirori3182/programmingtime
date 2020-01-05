Rails.application.routes.draw do
  get 'study' => 'study#index' #Postが送信
  post 'study' => 'study#create'
  resources :cards, only: [:new]
end
