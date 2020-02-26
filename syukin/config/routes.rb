Rails.application.routes.draw do
  get 'moneys/index'
  get 'moneys/create'
  get 'moneys/new'
  get 'moneys/update'
  get 'moneys/edit'
  get 'moneys/destroy'
  get 'moneys/show'
  get 'top/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
end
