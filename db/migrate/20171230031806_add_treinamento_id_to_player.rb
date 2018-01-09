class AddTreinamentoIdToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :treinamento_id, :integer
  end
end
