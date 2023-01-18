Rails.application.routes.draw do
  
  root :to => 'pages#home'
  
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new', :as => 'new_contact'
  post '/contacts/new' => 'contacts#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# Rails.application.routes.draw do
#   # This file will cause the most suffering today.
#   root :to => 'planets#index'
#   get '/planets' => 'planets#index'
#   get '/planets/new' => 'planets#new', :as => 'new_planet'
#   post '/planets' => 'planets#create'
#   get '/planets/:id' => 'planets#show', :as => 'planet'
#   get '/planets/:id/edit' => 'planets#edit', :as => 'edit_planet'
#   post '/planets/:id' => 'planets#update'
#   delete '/planets/:id' => 'planets#destroy'
# end
