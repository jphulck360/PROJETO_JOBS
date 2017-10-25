Rails.application.routes.draw do
  resources :curriculum_courses
  resources :curriculum_languages
  resources :messages
  resources :languages
  resources :phones
  get 'visitors/index'

  devise_for :users
  resources :users
  resources :experiences
  resources :courses
  resources :careers
  resources :jobs
  resources :curriculums
  resources :profiles

  # get 'users/index'

  root to: 'visitors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
