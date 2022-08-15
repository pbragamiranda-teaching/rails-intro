Rails.application.routes.draw do

  # VERB url_path, to: 'controller#method'
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
end
