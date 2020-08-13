class Produto < ApplicationRecord

	belongs_to :departamento, optional: true
	
	validates :preco, presence: true
	validates :quantidade, numericality: { only_integer: true }, presence: true
	validates :nome, length: {minimum: 4}
end
