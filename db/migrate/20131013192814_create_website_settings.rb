class CreateWebsiteSettings < ActiveRecord::Migration
  def change
    create_table :website_settings do |t|
      t.text :homepage_blurb
      t.text :contact

      t.timestamps
    end
  end
end
