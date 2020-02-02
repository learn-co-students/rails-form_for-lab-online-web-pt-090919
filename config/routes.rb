Rails.application.routes.draw do
  resources :students, only: [:new, :create, :show, :edit, :update]
  resources :school_classes, only: [:new, :create, :show, :edit, :update]
  get 'students/new', to: 'students#new'

  get 'students/create', to: 'students#create'

  get 'students/:id/show', to: 'students#show'

  get 'students/:id/edit', to: 'students#edit'

  get 'students/:id/update', to: 'students#update'

  get 'school_classes/new', to: 'school_classes#new'

  get 'school_classes/create', to: 'school_classes#create'

  get 'school_classes/:id/show', to: 'school_classes#show'

  get 'school_classes/:id/edit', to: 'school_classes#edit'

  get 'school_classes/:id/update', to: 'school_classes#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
