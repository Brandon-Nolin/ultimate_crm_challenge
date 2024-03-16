Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get '/', to: 'customers#index', as: 'root'
  get '/customers/missing_email', to: 'customers#missing_email', as: 'missing_email_customers'
  get '/customers/alphabetized', to: 'customers#alphabetized', as: 'alphabetized_customers'
end
