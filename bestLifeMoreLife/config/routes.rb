Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :artists, :entries, :journals, :moods, :playlists, :quotes, :tests, :tracks
        get 'login', to: 'logins#create'
        post 'users/new', to: 'users#create'
      end
    end
  end
