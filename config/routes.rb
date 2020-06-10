Rails.application.routes.draw do
  resources :canadas do
    get '/main', to: 'canadas#main', as: 'main'
    get '/immigrant', to: 'canadas#immigrant', as: 'immigrant'
    get '/study', to: 'canadas#study', as: 'study'
    get '/work', to: 'canadas#work', as: 'work'
    get '/visit', to: 'canadas#visit', as: 'visit'
    end
end
