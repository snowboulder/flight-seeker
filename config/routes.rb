Rails.application.routes.draw do


  get '/book' ,to: 'bookings#new'

  root 'flights#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
