require 'test_helper'

class WebsiteSettingsTest < ActiveSupport::TestCase
  test 'get the instance' do
  	@website_settings = WebsiteSettings.instance
  	assert @website_settings != nil
  end
end
