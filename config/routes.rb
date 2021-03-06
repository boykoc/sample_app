Rails.application.routes.draw do
    get 'users/new'

    # The priority is based upon order of creation: first created -> highest priority.
    # See how all your routes lay out with "rake routes".

    # You can have the root of your site routed with "root"

    root 'static_pages#home'
    get 'help' => 'static_pages#help'
    get 'about' => 'static_pages#about'
    get 'contact' => 'static_pages#contact'
    get 'signup' => 'users#new'
    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    delete 'logout' => 'sessions#destroy'
    resources :users
end