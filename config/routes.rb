Rails.application.routes.draw do
  root to: 'my_cv#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/cv', to: 'my_cv#curriculum_vitae', as: :cv
end
