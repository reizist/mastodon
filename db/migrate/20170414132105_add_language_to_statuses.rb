class AddLanguageToStatuses < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :statuses, :language, :string, null: false, default: 'en'
  end
end
