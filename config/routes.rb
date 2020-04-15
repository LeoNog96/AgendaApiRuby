Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :contacts
    end
  end
 
  # em caso de subdominios
  # constraints subdomain: 'api' do
  #   scope module: 'api' do
  #     namespace :v1 do
  #       resources :contacts
  #     end
  #   end
  # end
end