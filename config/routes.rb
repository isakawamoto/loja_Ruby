Rails.application.routes.draw do
  resources :departamentos
 resources :produtos, only: [:new, :create, :destroy]
 get "produtos/busca", to: "produtos#busca", as: :busca_produto
 root to: "produtos#index"
 # teste
end
