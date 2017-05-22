class AddWebsiteToOauthApplication < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :oauth_applications, :website, :string
  end
end
