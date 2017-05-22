class AddVisibilityToStatuses < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :statuses, :visibility, :integer, null: false, default: 0
  end
end
