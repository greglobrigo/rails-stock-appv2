Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'}
  resources :users
  get 'unapproved' => 'welcome#unapproved'
  get 'admin' => 'admin#index'
  get 'admin/edit/:id' => 'admin#edituser'
  patch 'admin.:id' => 'admin#updateuser'
  get 'admin/newuser' => 'admin#newuser'
  post 'admin/newuser' => 'admin#createuser'
  get 'admin/show/:id' => 'admin#showuser'
  patch 'admin/approve/:id' => 'admin#approveuser'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
