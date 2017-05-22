class AddIndexOnMentionsStatusId < ActiveRecord::Migration[4.2][5.0]
  def change
    add_index :mentions, :status_id
  end
end
