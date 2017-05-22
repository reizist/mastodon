class AddLastEmailedAtToUsers < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :users, :last_emailed_at, :datetime, null: true, default: nil
  end
end
