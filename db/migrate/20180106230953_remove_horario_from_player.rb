class RemoveHorarioFromPlayer < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :horario, :string
  end
end
