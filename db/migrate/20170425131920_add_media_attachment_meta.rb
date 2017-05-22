class AddMediaAttachmentMeta < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :media_attachments, :file_meta, :json
  end
end
