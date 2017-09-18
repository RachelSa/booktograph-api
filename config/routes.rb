Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: 'api' do  # lets use route to contollers without explicity including it in the url
    namespace :v1 do
      resources :reviews, :books, :authors, :users, :chapters, only: [:create, :update, :show, :index, :destroy]
    end
  end
end
