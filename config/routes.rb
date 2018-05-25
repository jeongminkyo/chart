Rails.application.routes.draw do
  resources :loads do
    collection { post :import }
  end
  resources :temps
  resources :predict_charts
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #

  controller :draw_chart do
    get '/draw_chart' => :index
  end

  root 'loads#chart'
end
