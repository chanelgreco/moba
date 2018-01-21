Rails.application.routes.draw do
  resources :debtors
  resources :expenses

  root 'expenses#index'
end
