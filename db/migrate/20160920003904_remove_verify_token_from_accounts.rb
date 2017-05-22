class RemoveVerifyTokenFromAccounts < ActiveRecord::Migration[4.2][5.0]
  def change
    remove_column :accounts, :verify_token, :string, null: false, default: ''
  end
end
