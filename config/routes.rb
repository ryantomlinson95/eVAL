Rails.application.routes.draw do

  root 'page#home'

  get 'results/new'

  get 'evals/new'

  get 'courses/new'

  get 'page/home'

  get 'page/about'

  get 'page/contact'

  get 'page/evals_created'

  resources :groups
  resources :memberships
  resources :evals
  resources :courses
  resources :results
  devise_for :users

end
