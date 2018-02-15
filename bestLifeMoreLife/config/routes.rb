Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :users, :artists, :entries, :journals, :moods, :playlists, :quotes, :tests, :tracks, :questions
        get 'login', to: 'logins#create'
        post 'users/new', to: 'users#create'
        post 'journals/new', to: 'journals#create'
        post 'entries/new', to: 'entries#create'
        post '/playlist', to: 'playlists#get_playlist'
        post '/artists/:id/picture', to: 'artists#get_picture'
      end
    end
  end
