class ProdutosController < ApplicationController

	def index
		@produto = Produto.order :nome
		@produto_com_desconto = Produto.order(:preco).limit 1
	end

	def create
    valores = params.require(:produto).permit(:nome, :descricao, :departamento_id, :preco, :quantidade)
    @produto = Produto.new valores
    if @produto.save
        flash[:notice] = "Produto salvo com sucesso!"
        redirect_to root_url
    else
        render :new
    end
end

	def destroy
		id = params[:id]
		Produto.destroy id
		redirect_to root_path
	end

	def busca
		@nome = params[:nome]
		@produto = Produto.where "nome like?", "%#{@nome}%"
	end

	def new
		@produto = Produto.new
		@departamento = Departamento.all
	end
end
