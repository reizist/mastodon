class AddLockedToAccounts < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :accounts, :locked, :boolean, null: false, default: false
  end
end
