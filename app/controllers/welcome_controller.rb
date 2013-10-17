class WelcomeController < ApplicationController
  def index
  	@website_settings = WebsiteSettings.instance
  	@posts = Post.order("created_at DESC").limit 5
  end

  def contact
  	@website_settings = WebsiteSettings.instance
  end
end
