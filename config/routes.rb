Rails.application.routes.draw do
  resources :calendars
  resources :flatsharings
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  resources :members
end