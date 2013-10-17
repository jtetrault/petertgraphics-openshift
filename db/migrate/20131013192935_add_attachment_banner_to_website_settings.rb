class AddAttachmentBannerToWebsiteSettings < ActiveRecord::Migration
  def self.up
    change_table :website_settings do |t|
      t.attachment :banner
    end
  end

  def self.down
    drop_attached_file :website_settings, :banner
  end
end
