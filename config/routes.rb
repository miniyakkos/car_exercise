Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cars do
    get 'for_sale', on: :collection
  end

  resources :people
end
