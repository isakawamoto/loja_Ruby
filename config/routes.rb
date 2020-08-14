Rails.application.routes.draw do
 resources :departamentos
 post "departamentos/new", to: "departamentos#new"
 resources :produtos, only: [:new, :create, :destroy, :edit, :update]
 get "produtos/busca", to: "produtos#busca", as: :busca_produto
 root to: "produtos#index"
 # teste
end
