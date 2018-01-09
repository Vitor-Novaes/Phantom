class Treinamento < ApplicationRecord
	has_many :player

	validates :dia , presence: true
	validates :horario , presence: true

end
