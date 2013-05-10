Todo::Application.routes.draw do
  root :to => "projects#index"

	resources :projects do
		resources :items, :only => [:index, :new]
	end

	resources :items

	resources :teams do
		resources :projects, :only => :new
	end

	resources :users
end
