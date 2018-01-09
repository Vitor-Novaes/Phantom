class AddEmailIdToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :email_id, :string
  end
end
