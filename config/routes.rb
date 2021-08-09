Rails.application.routes.draw do
  # get "/notees", to: "notees#index"
  # get "/notees/new", to: "notees#aaaa"
  # get "/notees/:id", to: "notees#bbbb"

  resources :order, only: [:index, :show] do
    member do
      delete :cancel
      #DELETE /orders/2/cancel
    end

    collection do
      delete :cancel
      #DELETE /orders/cancel
    end
  end

  resources :notees
  
  get "/hello", to: "pages#main"
  get "/about", to: "pages#about"

  get "/users", to: "users#profile"
end
