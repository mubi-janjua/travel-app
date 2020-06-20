Rails.application.routes.draw do
  devise_for :users
  resources :canadas do
    get '/main', to: 'canadas#main', as: 'main'
    get '/immigrant', to: 'canadas#immigrant', as: 'immigrant'
    get '/study', to: 'canadas#study', as: 'study'
    get '/work', to: 'canadas#work', as: 'work'
    get '/visit', to: 'canadas#visit', as: 'visit'
    get '/contact-us', to: 'canadas#contact-us', as: 'contact-us'
    collection do
      get '/search', to: 'canadas#search', as: 'search'
    end
  end
    root 'canadas#index'
end
