class CreateTreinamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :treinamentos do |t|
      t.string :dia
      t.string :horario

      t.timestamps
    end
  end
end
