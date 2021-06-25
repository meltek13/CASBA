Rails.application.routes.draw do
   default_url_options :host => "https://casba-rails-api.herokuapp.com/"
  # default_url_options host: 'http://localhost:3000/'

  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }
  get '/flatsharings/:id/admin', to: 'flatsharings#admin'
  get '/flatsharings/:id/dashboard', to: 'flatsharings#dashboard'
  post '/dashboard/:id/calendars', to: 'calendars#createCalendars'
  get '/dashboard/:id/calendars', to: 'calendars#showCalendars'

  resources :members
  resources :calendars
  resources :flatsharings
  resources :expenses
end
