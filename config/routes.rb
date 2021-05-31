Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do 
      resources :kinds do
        resources :quotes
      end 
    end 
  end 
end
