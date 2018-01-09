class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :nome
      t.string :nick
      t.string :posicao
      t.string :ranked
      t.string :horario

      t.timestamps
    end
  end
end
