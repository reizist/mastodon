class AddHeaderRemoteUrlToAccounts < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :accounts, :header_remote_url, :string, null: false, default: ''
  end
end
