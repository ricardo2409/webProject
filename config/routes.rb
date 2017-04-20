Rails.application.routes.draw do
  devise_for :users
	resources :trainers
	resources :trainees do
		resources :routines
	end
	devise_scope :user do
	  root to: "devise/sessions#new"
	end
end
