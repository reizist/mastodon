class AddApplicationToStatuses < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :statuses, :application_id, :int
  end
end
