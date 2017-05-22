class AddSpoilerTextToStatuses < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :statuses, :spoiler_text, :text
  end
end
