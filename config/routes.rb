Todo::Application.routes.draw do
  root :to => "projects#index"

	resources :projects
	resources :items
	resources :teams
end
