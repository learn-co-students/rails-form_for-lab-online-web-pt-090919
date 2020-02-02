Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, :school_classes, only: [:new, :create, :show, :edit]
  patch 'students/:id', to: 'students#update'
  patch 'school_classes/:id', to: 'school_classes#update'
end
