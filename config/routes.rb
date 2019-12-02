Rails.application.routes.draw do
  get 'study' => 'study#index' #Postが送信
  get 'study' => 'study#create'
end
