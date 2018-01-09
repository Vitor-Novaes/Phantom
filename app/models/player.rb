class Player < ApplicationRecord

	validates :nome , length: { minimum: 5} 
	validates :nick , presence: true
	# validates :ranked , presence: true
	validates :email_id, uniqueness: true, format: { with: /\b[A-Z0-9._%a-z\-]+@aluno\.uece\.br\z/,
 	                  message: "deve ser uma conta aluno.uece.br" }

 	belongs_to :treinamento
end
