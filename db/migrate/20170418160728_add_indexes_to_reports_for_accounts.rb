class AddIndexesToReportsForAccounts < ActiveRecord::Migration[4.2][5.0]
  def change
    add_index :reports, :account_id
    add_index :reports, :target_account_id
  end
end
