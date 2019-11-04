Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#show


#get 'articles/about', to: 'articles#about'
  
resources :articles, only: [:index, :new, :create, :edit, :update]
get 'articles/:id', to: 'articles#show'
  
  
  #get 'articles/:id', to: 'articles#show'
  

# #edit
# get 'articles/:id/edit', to: 'articles#edit', as: :edit_articles

#update
#patch 'articles/:id', to: 'articles#update'

# resources :articles, only: [:index, :new, :show, :edit, :create, :update]
end
