Rails.application.routes.draw do
  resource :school_details do
    get :get_details, on: :collection
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "school_details#index"

end
