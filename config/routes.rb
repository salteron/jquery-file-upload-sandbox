Rails.application.routes.draw do
  resources :paintings, only: %i[index create]
end
