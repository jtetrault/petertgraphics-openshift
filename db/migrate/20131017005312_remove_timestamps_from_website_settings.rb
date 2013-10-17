class RemoveTimestampsFromWebsiteSettings < ActiveRecord::Migration
  def up
    remove_column :website_settings, :created_at
    remove_column :website_settings, :updated_at
  end

  def down
    add_column :website_settings, :updated_at, :datetime
    add_column :website_settings, :created_at, :datetime
  end
end
