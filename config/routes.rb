Rails.application.routes.draw do
  resources :customers, only: [:index]

  resources :videos, only: [:index, :show], param: :title

  post "/rentals/:title/check-out", to: "rentals#check_out", as: "check_out"
  post "/rentals/:title/return", to: "rentals#check_in", as: "check_in"
  get "/rentals/overdue", to: "rentals#overdue", as: "overdue"

  root 'videos#index'
end
