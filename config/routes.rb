Rails.application.routes.draw do
  resources :flatsharings
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  resources :members
end