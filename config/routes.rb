Rails.application.routes.draw do
  devise_for :users
  #get 'welcome/index'

resources :docs

#For the users who login => show index of Docs
authenticated :user do
  root "docs#index", as: "authenticated_root"
end

# For the user who do not login => show index of welcome page
root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
