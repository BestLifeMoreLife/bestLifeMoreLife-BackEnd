Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :users, :artists, :entries, :journals, :moods, :playlists, :quotes, :tests, :tracks, :questions
        get 'login', to: 'logins#create'
        post 'users/new', to: 'users#create'
        post 'journals/new', to: 'journals#create'
        post 'entries/new', to: 'entries#create'
      end
    end
  end
