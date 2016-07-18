Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Crear una ruta para el controlador
  resources :users
  #primer parametro es el URI luego del to tengo que donde voy a sacar mi controlador y luego del numeral la accion
  get "/vista", to:"probandos#vista", as: "probandos"
end
