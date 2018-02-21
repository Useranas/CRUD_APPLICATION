Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'welcome#home_page'
	get 'users/new', to: 'users#new'
	post 'users/create', to: 'users#create'
	get 'users/index', to: 'users#index'
	get 'users/:id', to:'users#show', as: :show_user
	get 'users/:id/edit', to:'users#edit', as: :edit_user
	put 'users/:id/update', to: "users#update", as: :update_user
	delete 'users/:id/destroy', to:"users#destroy", as: :destroy_user
end
