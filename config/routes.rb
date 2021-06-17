Rails.application.routes.draw do

  default_url_options :host => "http://localhost:3000/"
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  get '/flatsharings/:id/admin', to: 'flatsharings#admin'
  get '/flatsharings/:id/dashboard', to: 'flatsharings#dashboard'

  resources :members
  resources :calendars
  resources :flatsharings
  resources :expenses
end