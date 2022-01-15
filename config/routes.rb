Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #index
  root to: "pets#index"
  #new
  get 'pets/new', to: 'pets#new', as: :new_pet
  #show
  get 'pets/:id', to: 'pets#show', as: :pet
  #create
  post 'pets', to: 'pets#create'

  #destroy
  delete '/pets/:id', to: 'pets#destroy'
end
