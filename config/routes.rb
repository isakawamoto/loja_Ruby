Rails.application.routes.draw do
 resources :produtos, only: [:new, :create, :destroy]
 get "produtos/busca", to: "produtos#busca", as: :busca_produto
 root to: "produtos#index"
end
