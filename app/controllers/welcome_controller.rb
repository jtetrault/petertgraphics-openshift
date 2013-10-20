class WelcomeController < ApplicationController

  def index
  	@website_settings = WebsiteSettings.instance
  	@posts = Post.order("created_at DESC").limit 5
    @page_description = "Peter T Graphics is a Professional Graphic Art Design and Sign Shop providing a variety of related services in Winnipeg.
      We specialize in Logo Design, Signs, Illustrations, Printed Media Graphics, Coloured Vinyl Works, and Decals, among many others. Peter T Graphics
      is founded by published Manitoba artist Peter Tetrault."
    set_meta_tags :og => {image: @website_settings.banner.url(:banner)}
  end

  def contact
  	@website_settings = WebsiteSettings.instance
    @page_title = 'Contact'
  end
end
