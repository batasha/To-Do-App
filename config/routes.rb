Todo::Application.routes.draw do
  root :to => "projects#index"

	resources :projects
	resources :items do
		resources :items, :only => [:new]
	end

	resources :teams do
		resources :projects, :only => [:new]
	end

	resources :users
end
