class AddUserIdToStatuses < ActiveRecord::Migration[5.0]
  def change

  	add_column :statuses, :usuario_id, :integer
  	add_index :statuses, :usuario_id
  	remove_column :statuses, :nombre
  end
end
