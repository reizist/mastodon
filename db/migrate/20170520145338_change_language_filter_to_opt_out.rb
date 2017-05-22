class ChangeLanguageFilterToOptOut < ActiveRecord::Migration[4.2][5.0]
  def change
    remove_index :users, :allowed_languages
    remove_column :users, :allowed_languages

    add_column :users, :filtered_languages, :string, array: true, default: 0, null: false
    add_index :users, :filtered_languages, using: :btree
  end
end
