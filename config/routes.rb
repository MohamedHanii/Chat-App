Rails.application.routes.draw do
  
 
  #Root Route
  root 'chatroom#index'
 
  #Show login form
  get 'login', to: 'sessions#new'

  #submit login form  
  post 'login', to: 'sessions#create'
  
  #logout
  delete 'logout', to: 'sessions#destroy'

  post 'message', to: 'messages#create'
  mount ActionCable.server, at: '/cable'

end
