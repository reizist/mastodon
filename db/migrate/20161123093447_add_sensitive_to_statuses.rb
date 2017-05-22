class AddSensitiveToStatuses < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :statuses, :sensitive, :boolean, default: false
  end
end
