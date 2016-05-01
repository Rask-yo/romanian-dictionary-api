Rails.application.routes.draw do
  # API Routes
  namespace :api do
    namespace :v1 do
      scope controller: :word do
        resources :words, param: :name, only: [:index, :show]
      end
    end
  end
end
