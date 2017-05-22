class AddIndexAccountsOnUri < ActiveRecord::Migration[4.2][5.0]
  def change
    add_index :accounts, :uri
  end
end
