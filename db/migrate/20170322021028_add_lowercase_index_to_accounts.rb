class AddLowercaseIndexToAccounts < ActiveRecord::Migration[4.2][5.0]
  def up
    # execute 'CREATE INDEX index_accounts_on_username_and_domain_lower ON accounts (lower(username), lower(domain))'
  end

  def down
    # remove_index :accounts, name: 'index_accounts_on_username_and_domain_lower'
  end
end
