class WebsiteSettingsController < ApplicationController
  # GET /website_settings
  def show
  	@website_settings = WebsiteSettings.instance
  end

  # GET /website_settings/edit
  def edit
  	@website_settings = WebsiteSettings.instance
  end

  # POST /website_settings
  def update
	@website_settings = WebsiteSettings.instance

    respond_to do |format|
      if @website_settings.update_attributes(params[:website_settings])
        format.html { redirect_to website_settings_path, notice: 'Website settings were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

end
