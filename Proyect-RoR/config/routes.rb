Rails.application.routes.draw do

  get 'test_sesiones/iniciar_sesion'
  post "test_sesiones/iniciar_sesion"

  get 'test_sesiones/cerrar_sesion'

  get 'test_sesiones/bienvenida'

  get 'test_cookies/identificacion'
  post 'test_cookies/identificacion'

  get "archivos/subir_archivos"
  post "archivos/subir_archivos"
  get "archivos/listar_archivos"
  post "archivos/borrar_archivos"
  get "archivos/guardar_comentarios"
  post "archivos/guardar_comentarios"

  get 'formularios/por_get'

  get 'formularios/por_post'
  post 'formularios/por_post'

  get 'redes_sociales/facebook'

  get 'redes_sociales/twitter'

  get 'redes_sociales/google_mas'

  root :to => 'principal#index'
  # match '/indexdos' => 'principal#indexdos'
  get 'principal/index'
  get 'principal/indexdos'

  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
