class AddSuspendedToAccounts < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :accounts, :suspended, :boolean, null: false, default: false
  end
end
