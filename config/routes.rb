Rails.application.routes.draw do
  
  #Root Route
  root 'chatroom#index'
 
  #Login Route
  get 'login', to: 'sessions#new'

end
