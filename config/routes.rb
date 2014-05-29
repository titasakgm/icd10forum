Icd10forum::Application.routes.draw do

  resources :specialties

  get 'signup', :to => 'users#new', :as => 'signup' 
  get 'login', :to => 'sessions#new', :as => 'login' 
  get 'logout', :to => 'sessions#destroy', :as => 'logout' 

  resources :users
  resources :sessions

  resources :qandas
  resources :faqs
  resources :codes
  resources :blocks
  resources :chapters

  match 'login/consultant/:id' => 'sessions#consultant'

  root :to => 'welcome#index'
end
