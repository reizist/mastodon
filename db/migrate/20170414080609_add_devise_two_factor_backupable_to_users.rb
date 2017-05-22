class AddDeviseTwoFactorBackupableToUsers < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :users, :otp_backup_codes, :string, array: true
  end
end
