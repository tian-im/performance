Rails.application.routes.draw do
  get '/', to: 'application#index'
  get 'users/new_objects', to: 'users#new_objects'
  get 'users/all_records', to: 'users#all_records'
  get 'users/find_each_record', to: 'users#find_each_record'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
