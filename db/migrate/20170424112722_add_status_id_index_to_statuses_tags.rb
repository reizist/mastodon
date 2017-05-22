class AddStatusIdIndexToStatusesTags < ActiveRecord::Migration[4.2][5.0]
  def change
    add_index :statuses_tags, :status_id
  end
end
