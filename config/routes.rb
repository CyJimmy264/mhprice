Rails.application.routes.draw do
  get 'price/index'

  root 'price#index'
end
