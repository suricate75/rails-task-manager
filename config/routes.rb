Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Index
  get '/tasks', to: "tasks#index"

  # New
  get '/tasks/new', to: "tasks#new"
  # Create
  post '/tasks', to: "tasks#create"

  # Show
  get '/tasks/:id', { to: "tasks#show", as: 'task' }

  # Edit
  get '/tasks/:id/edit', to: "tasks#edit"
  #   Update
  patch '/tasks/:id', to: "tasks#update"

  # Destroy
  delete '/tasks/:id', to: "tasks#destroy"
end
