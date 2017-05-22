class AddSeverityToDomainBlocks < ActiveRecord::Migration[4.2][5.0]
  def change
    add_column :domain_blocks, :severity, :integer, default: 0
  end
end
