Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :users, :artists, :entries, :journals, :moods, :playlists, :quotes, :tests, :tracks
        get 'login', to: 'logins#create'

      end
    end
  end
