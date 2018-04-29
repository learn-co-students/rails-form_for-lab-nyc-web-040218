Rails.application.routes.draw do
  get '/school_classes', to: 'school_classes#index'

  get '/school_classes/new', to: 'school_classes#new', as: 'new_school_class'
  post '/school_classes', to: 'school_classes#create'

  get 'school_classes/:id', to: 'school_classes#show', as: 'school_class'
  get 'school_classes/:id/edit', to: 'school_classes#edit', as: 'edit_school_class'
  patch 'school_classes/:id', to: 'school_classes#update'

  resources :students, except: :destroy
end
