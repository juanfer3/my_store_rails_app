Rails.application.routes.draw do
  resources :contenedores_imagenes_articulos
  resources :articulos
  resources :categorias
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'static_pages#home'

end
